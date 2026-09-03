scoreboard players set @s obl.process.emp.four_symbols 0
tellraw @s [{"text":"[Дополнительное усиление отключено.]","color":"red"}]
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 0.7

scoreboard players remove @s[tag=obl.empowered.four_symbols] obl.stackable.speed 175
scoreboard players remove @s[tag=obl.empowered.four_symbols] obl.stackable.resistance 125
scoreboard players remove @s[tag=obl.empowered.four_symbols] obl.stackable.haste 100
scoreboard players remove @s[tag=obl.empowered.four_symbols] obl.stackable.strength 150

tag @s remove obl.empowered.four_symbols