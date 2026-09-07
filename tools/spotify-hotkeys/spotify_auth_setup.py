"""
Run this once to authorize the "like current song" hotkey to act on your
Spotify account. It opens your browser to approve access, then stores a
refresh token locally for spotify_hotkeys.py to use.

Before running:
  1. Go to https://developer.spotify.com/dashboard and create an app
     (any name/description works - this is just your own personal app).
  2. In the app's Settings, add this exact Redirect URI:
       http://127.0.0.1:8888/callback
  3. Copy the app's Client ID (not the secret - it isn't needed) and paste
     it in when this script asks for it.
"""

import http.server
import secrets
import sys
import threading
import urllib.parse
import webbrowser

import spotify_api

PORT = 8888


class _CallbackHandler(http.server.BaseHTTPRequestHandler):
    def do_GET(self):
        query = urllib.parse.urlparse(self.path).query
        params = urllib.parse.parse_qs(query)
        self.server.auth_code = params.get("code", [None])[0]
        self.server.auth_state = params.get("state", [None])[0]
        self.server.auth_error = params.get("error", [None])[0]

        self.send_response(200)
        self.send_header("Content-Type", "text/html; charset=utf-8")
        self.end_headers()
        self.wfile.write(
            "<html><body>Готово, можно закрыть эту вкладку и вернуться "
            "в консоль.</body></html>".encode("utf-8")
        )

    def log_message(self, *args):
        pass


def main():
    client_id = input("Spotify Client ID: ").strip()
    if not client_id:
        sys.exit("Client ID is required")

    verifier, challenge = spotify_api.make_pkce_pair()
    state = secrets.token_urlsafe(16)
    auth_url = spotify_api.build_authorize_url(client_id, challenge, state)

    server = http.server.HTTPServer(("127.0.0.1", PORT), _CallbackHandler)
    server.auth_code = None
    server.auth_state = None
    server.auth_error = None
    thread = threading.Thread(target=server.handle_request, daemon=True)
    thread.start()

    print("Открываю браузер для авторизации...")
    print(f"Если он не откроется сам, перейдите по ссылке:\n{auth_url}")
    webbrowser.open(auth_url)
    thread.join(timeout=180)

    if server.auth_error:
        sys.exit(f"Spotify отказал в доступе: {server.auth_error}")
    if not server.auth_code:
        sys.exit("Не дождались кода авторизации (тайм-аут 3 минуты).")
    if server.auth_state != state:
        sys.exit("state не совпадает, авторизация отклонена из соображений безопасности.")

    tokens = spotify_api.exchange_code_for_tokens(client_id, server.auth_code, verifier)
    spotify_api.save_credentials({
        "client_id": client_id,
        "refresh_token": tokens["refresh_token"],
    })
    print(f"Готово. Токен сохранён в {spotify_api.CREDENTIALS_FILE}")
    print("Никому не передавайте этот файл - он даёт доступ к вашей библиотеке Spotify.")


if __name__ == "__main__":
    main()
