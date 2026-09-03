execute if score @s[gamemode=!spectator] obl.isonfire matches 0.. unless score @s obl.lavaexplorer matches 11.. run scoreboard players add @s obl.lavaexplorer 1

execute unless score @s[gamemode=!spectator] obl.isonfire matches 0.. if score @s obl.lavaexplorer matches 1.. run scoreboard players remove @s obl.lavaexplorer 1

execute unless score @s obl.lavaexplorer matches 11.. run effect give @s fire_resistance 3 0 false
execute unless score @s obl.lavaexplorer matches 11.. run particle minecraft:flame ~ ~1 ~ 0.3 0.6 0.3 0 10 normal

execute if score @s obl.lavaexplorer matches 1 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25","color":"red"}
execute if score @s obl.lavaexplorer matches 2 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 3 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 4 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 5 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 6 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 7 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 8 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 9 run title @s actionbar {"text":"\ud83d\udd25 \ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 10 run title @s actionbar {"text":"\ud83d\udd25 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 11 run title @s actionbar {"text":"\u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020 \u0020\u0020","color":"red"}
execute if score @s obl.lavaexplorer matches 11 run effect clear @s fire_resistance



execute if block ~ ~ ~ water if block ~ ~1 ~ lava run advancement grant @s only oblivion:advancements/accs/other/lavawater
execute if block ~ ~ ~ lava if block ~ ~1 ~ water run advancement grant @s only oblivion:advancements/accs/other/lavawater
execute if block ~ ~ ~ water if block ~ ~2 ~ lava run advancement grant @s only oblivion:advancements/accs/other/lavawater
execute if block ~ ~ ~ lava if block ~ ~2 ~ water run advancement grant @s only oblivion:advancements/accs/other/lavawater