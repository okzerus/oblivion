"""
Minimal Spotify Web API client used only to like/unlike the currently
playing track - the one action with no OS-level media command equivalent,
so it can't be sent directly to the desktop app's window like play/pause
or next/previous track are.

Uses the Authorization Code + PKCE flow, so only a public Client ID is
needed (no client secret to keep safe). Run spotify_auth_setup.py once to
obtain and store a refresh token; everything here just uses that token.
Stdlib only (urllib), no third-party packages.
"""

import base64
import hashlib
import json
import os
import secrets
import urllib.error
import urllib.parse
import urllib.request

CONFIG_DIR = os.path.join(
    os.environ.get("LOCALAPPDATA", os.path.expanduser("~")), "SpotifyHotkeys"
)
CREDENTIALS_FILE = os.path.join(CONFIG_DIR, "api_credentials.json")

AUTH_URL = "https://accounts.spotify.com/authorize"
TOKEN_URL = "https://accounts.spotify.com/api/token"
API_BASE = "https://api.spotify.com/v1"
SCOPES = "user-read-currently-playing user-read-playback-state user-library-read user-library-modify"
REDIRECT_URI = "http://127.0.0.1:8888/callback"


def load_credentials():
    if not os.path.isfile(CREDENTIALS_FILE):
        return None
    with open(CREDENTIALS_FILE, "r", encoding="utf-8") as f:
        return json.load(f)


def save_credentials(data):
    os.makedirs(CONFIG_DIR, exist_ok=True)
    with open(CREDENTIALS_FILE, "w", encoding="utf-8") as f:
        json.dump(data, f)


def make_pkce_pair():
    verifier = base64.urlsafe_b64encode(secrets.token_bytes(64)).rstrip(b"=").decode("ascii")
    challenge_digest = hashlib.sha256(verifier.encode("ascii")).digest()
    challenge = base64.urlsafe_b64encode(challenge_digest).rstrip(b"=").decode("ascii")
    return verifier, challenge


def build_authorize_url(client_id, code_challenge, state):
    params = {
        "client_id": client_id,
        "response_type": "code",
        "redirect_uri": REDIRECT_URI,
        "code_challenge_method": "S256",
        "code_challenge": code_challenge,
        "scope": SCOPES,
        "state": state,
    }
    return f"{AUTH_URL}?{urllib.parse.urlencode(params)}"


def _send(req):
    try:
        with urllib.request.urlopen(req, timeout=10) as resp:
            raw = resp.read()
    except urllib.error.HTTPError as e:
        # Spotify's error responses carry a useful JSON body (e.g. "invalid
        # grant" / "invalid redirect URI") that a bare HTTPError discards -
        # surface it so failures are actually debuggable.
        detail = e.read().decode("utf-8", "replace")
        raise urllib.error.HTTPError(e.url, e.code, f"{e.reason}: {detail}", e.headers, None) from None
    return json.loads(raw) if raw else None


def _post_form(url, fields):
    data = urllib.parse.urlencode(fields).encode("ascii")
    req = urllib.request.Request(url, data=data, method="POST")
    return _send(req)


def exchange_code_for_tokens(client_id, code, code_verifier):
    return _post_form(TOKEN_URL, {
        "grant_type": "authorization_code",
        "code": code,
        "redirect_uri": REDIRECT_URI,
        "client_id": client_id,
        "code_verifier": code_verifier,
    })


def refresh_access_token(client_id, refresh_token):
    return _post_form(TOKEN_URL, {
        "grant_type": "refresh_token",
        "refresh_token": refresh_token,
        "client_id": client_id,
    })


def get_access_token():
    creds = load_credentials()
    if not creds:
        return None
    result = refresh_access_token(creds["client_id"], creds["refresh_token"])
    # Spotify occasionally rotates the refresh token; persist it if so.
    new_refresh = result.get("refresh_token")
    if new_refresh and new_refresh != creds["refresh_token"]:
        creds["refresh_token"] = new_refresh
        save_credentials(creds)
    return result["access_token"]


def _api_request(method, path, token, body=None):
    data = json.dumps(body).encode("utf-8") if body is not None else None
    req = urllib.request.Request(f"{API_BASE}{path}", data=data, method=method)
    req.add_header("Authorization", f"Bearer {token}")
    if data is not None:
        req.add_header("Content-Type", "application/json")
    return _send(req)


def get_currently_playing_track_id(token):
    result = _api_request("GET", "/me/player/currently-playing", token)
    if not result or not result.get("item"):
        return None
    return result["item"]["id"]


def is_track_saved(token, track_id):
    result = _api_request("GET", f"/me/tracks/contains?ids={track_id}", token)
    return bool(result and result[0])


def toggle_like_current_track():
    """Like the current track if it isn't saved yet, unlike it if it is -
    the same effect as pressing the heart button in the app."""
    token = get_access_token()
    if not token:
        return "not_configured"

    track_id = get_currently_playing_track_id(token)
    if not track_id:
        return "nothing_playing"

    if is_track_saved(token, track_id):
        _api_request("DELETE", f"/me/tracks?ids={track_id}", token)
        return "unliked"
    _api_request("PUT", f"/me/tracks?ids={track_id}", token)
    return "liked"


if __name__ == "__main__":
    # Run this directly (`python spotify_api.py`) to see exactly why the
    # like hotkey isn't doing anything - spotify_hotkeys.py only logs this
    # to a file, which is easy to miss.
    print("Credentials file:", CREDENTIALS_FILE)
    try:
        print("Result:", toggle_like_current_track())
    except Exception:
        import traceback
        traceback.print_exc()
