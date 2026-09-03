scoreboard players set #player_count oblivion 0
execute at @a run scoreboard players add #player_count oblivion 1
execute if score #player_count oblivion matches 2.. run tag @s add obl.temp.multiplayer

execute if entity @s[tag=obl.temp.multiplayer,tag=!obl.bad_apple.warned] run tellraw @s [{"text":"\n"},{"text":"Внимание!","color":"#454545"},{"text":"\n"},{"text":"На данный момент на сервере находится более двух игроков.","color":"#E4E4E4"},{"text":"\n"},{"text":"Крайне рекомендуется подождать, и убедиться, что ТПС сервера 20, прежде чем есть это яблоко.","color":"#E4E4E4"},{"text":"\n"},{"text":"Второе употребление проигнорирует это предупреждение.","color":"#E4E4E4"},{"text":"\n "}]
execute if entity @s[tag=obl.temp.multiplayer,tag=!obl.bad_apple.warned] run loot spawn ~ ~ ~ loot oblivion:items/accs/bad_apple
execute if entity @s[tag=obl.temp.multiplayer,tag=!obl.bad_apple.warned] run playsound minecraft:entity.hoglin.death hostile @s ~ ~ ~ 0.5 2

execute if entity @s[tag=obl.temp.multiplayer,tag=obl.bad_apple.warned] run tag @s add obl.playing.bad_apple
execute if entity @s[tag=obl.temp.multiplayer,tag=obl.bad_apple.warned] run title @s times 0 70 12
execute if entity @s[tag=obl.temp.multiplayer,tag=obl.bad_apple.warned] run title @s subtitle {"text":"Touhou","color":"#454545"}
execute if entity @s[tag=obl.temp.multiplayer,tag=obl.bad_apple.warned] run title @s title {"text":"Bad Apple!!","color":"#E4E4E4"}
execute if entity @s[tag=obl.temp.multiplayer,tag=obl.bad_apple.warned] run playsound minecraft:entity.player.burp hostile @s ~ ~ ~ 1 0.8
execute if entity @s[tag=obl.temp.multiplayer,tag=obl.bad_apple.warned] run execute anchored eyes positioned ^ ^-.3 ^.5 run particle item apple{CustomModelData:5055} ~ ~ ~ 0.1 0.1 0.1 0.1 20 normal

execute if entity @s[tag=!obl.temp.multiplayer] run tag @s add obl.playing.bad_apple
execute if entity @s[tag=!obl.temp.multiplayer] run title @s times 0 70 12
execute if entity @s[tag=!obl.temp.multiplayer] run title @s subtitle {"text":"Touhou","color":"#454545"}
execute if entity @s[tag=!obl.temp.multiplayer] run title @s title {"text":"Bad Apple!!","color":"#E4E4E4"}
execute if entity @s[tag=!obl.temp.multiplayer] run playsound minecraft:entity.player.burp hostile @s ~ ~ ~ 1 0.8
execute if entity @s[tag=!obl.temp.multiplayer] run execute anchored eyes positioned ^ ^-.3 ^.5 run particle item apple{CustomModelData:5055} ~ ~ ~ 0.1 0.1 0.1 0.1 20 normal

execute if entity @s[tag=obl.temp.multiplayer] run tag @s add obl.bad_apple.warned
tag @s remove obl.temp.multiplayer
advancement revoke @s only oblivion:tech/ate.bad_apple