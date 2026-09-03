# Armor broken

function oblivion:rng
execute if score randomizer obl.rng matches 1..8 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 5 0 false
execute if score randomizer obl.rng matches 1..8 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

# Hit particle

particle minecraft:sweep_attack ~ ~.8 ~ 0.2 0.2 0.2 0 1 force
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 2

# Bleeding

execute if entity @s[type=#oblivion:canbleedparticle,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block redstone_block ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
execute if entity @s[type=#oblivion:canbleedgreenparticle,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block green_wool ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
execute if entity @s[type=#oblivion:canbleedpurpleparticle,tag=!obl.cantbleed,tag=!obl.witherinvul] run particle block purple_wool ~ ~1.5 ~ 0.2 0.4 0.2 0 10 force
effect give @s[type=#oblivion:canbleed,tag=!obl.cantbleed,tag=!obl.witherinvul] wither 3 0 true
tag @s[type=#oblivion:canbleed,tag=!obl.cantbleed,tag=!obl.witherinvul] add bleeding1
tag @s[type=#oblivion:canbleed,tag=!obl.cantbleed,tag=!obl.witherinvul] add bleeding