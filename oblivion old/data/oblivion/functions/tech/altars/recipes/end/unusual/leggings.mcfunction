## ADD UNUSUAL EFFECT
execute unless score @s obl.unusual.id matches 2 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=2}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/ice_and_fire
execute unless score @s obl.unusual.id matches 21 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=21}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/chaos
execute unless score @s obl.unusual.id matches 30 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=30}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/yin_yang
execute unless score @s obl.unusual.id matches 59 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=59}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/avatar
execute unless score @s obl.unusual.id matches 62 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=62}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/elemental
execute unless score @s obl.unusual.id matches 63 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=63}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/bunny
execute unless score @s obl.unusual.id matches 64 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=63}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/cat_black
execute unless score @s obl.unusual.id matches 65 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=63}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/cat_orange
execute unless score @s obl.unusual.id matches 66 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=66}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/demon
execute unless score @s obl.unusual.id matches 89 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=89}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/magika
execute unless score @s obl.unusual.id matches 90 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=90}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/oblivion
execute unless score @s obl.unusual.id matches 91 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=91}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/raging_black_souls
execute unless score @s obl.unusual.id matches 92 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=92}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/raging_souls
execute unless score @s obl.unusual.id matches 93 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=93}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/raging_flames
execute unless score @s obl.unusual.id matches 94 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=94}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/raging_blue_flames
execute unless score @s obl.unusual.id matches 95 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=95}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/witch_aura
execute unless score @s obl.unusual.id matches 96 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=96}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/glow_aura
execute unless score @s obl.unusual.id matches 97 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=97}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/white_aura
execute unless score @s obl.unusual.id matches 102 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=102}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/totem
execute unless score @s obl.unusual.id matches 119 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=119}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/fox
execute unless score @s obl.unusual.id matches 120 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=120}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/white_wave
execute unless score @s obl.unusual.id matches 124 if entity @e[type=item,distance=...3,tag=obl.altar.item.using,tag=obl.item.unusualifier,scores={obl.unusual.id=124}] run function oblivion:tech/altars/recipes/end/unusual/add/leggings/nebula





## PARTICLES
function oblivion:tech/altars/recipes/end/crafting_particles

## CLEANUP
execute as @e[tag=obl.altar.item.using,distance=..3] at @s run function oblivion:tech/altars/recipes/end/cleanup