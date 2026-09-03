execute at @a[tag=obl.hungerchosen] run particle item rotten_flesh{CustomModelData:30000} ~ ~1 ~ 0.3 0.6 0.3 0 100 force
effect give @a[tag=obl.hungerchosen] instant_damage 1 0 true
effect give @a[tag=obl.hungerchosen] slowness 3 4 true
effect give @a[tag=obl.hungerchosen] hunger 5 225 true
effect give @e[tag=hunger] instant_damage 1 2 true
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 3 0.1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 3 0.1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 3 0.1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 3 0.1
playsound minecraft:entity.generic.eat master @a ~ ~ ~ 3 0.1
playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 3 0.1

tp @s ~ -256 ~
kill @s