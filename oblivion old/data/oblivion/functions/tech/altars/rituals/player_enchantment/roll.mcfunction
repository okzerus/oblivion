function oblivion:rng

###   F U N C T I O N
title @s times 10 40 0
title @s title ""
playsound minecraft:block.lever.click player @s ~ ~ ~ 1 0.7
tag @s remove obl.bad_enchantment
tag @s remove obl.good_enchantment

###   R O L L
## LEVEL 1
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 1 if score randomizer obl.rng matches 41.. run title @s subtitle {"text":"\u262f","color":"green"}
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 1 if score randomizer obl.rng matches 41.. run tag @s add obl.good_enchantment
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 1 if score randomizer obl.rng matches ..40 run title @s subtitle {"text":"\u262f","color":"red"}
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 1 if score randomizer obl.rng matches ..40 run tag @s add obl.bad_enchantment
## LEVEL 2
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 2 if score randomizer obl.rng matches 31.. run title @s subtitle {"text":"\u262f","color":"green"}
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 2 if score randomizer obl.rng matches 31.. run tag @s add obl.good_enchantment
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 2 if score randomizer obl.rng matches ..30 run title @s subtitle {"text":"\u262f","color":"red"}
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 2 if score randomizer obl.rng matches ..30 run tag @s add obl.bad_enchantment
## LEVEL 3
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 3 if score randomizer obl.rng matches 21.. run title @s subtitle {"text":"\u262f","color":"green"}
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 3 if score randomizer obl.rng matches 21.. run tag @s add obl.good_enchantment
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 3 if score randomizer obl.rng matches ..20 run title @s subtitle {"text":"\u262f","color":"red"}
execute if score @e[type=marker,tag=obl.altar,limit=1,sort=nearest,distance=..5] obl.altar.level matches 3 if score randomizer obl.rng matches ..20 run tag @s add obl.bad_enchantment
