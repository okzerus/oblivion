# Armor broken

function oblivion:rng
execute if score randomizer obl.rng matches 1..20 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 10 0 false
execute if score randomizer obl.rng matches 1..20 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add


# Set AoE tags to mobs nearby (excluding attacker)

execute positioned ~ ~2 ~ run tag @e[type=#oblivion:canbleed,distance=..10,sort=nearest,limit=10] add damagedarea
execute as @a[tag=obl.avoidhit] run tag @s remove damagedarea

# Hit particle

execute as @e[tag=damagedarea] at @s run particle minecraft:flame ~ ~1 ~ 0.2 0.2 0.2 0.1 30 force
execute as @e[tag=damagedarea] at @s run particle block glowstone ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
execute as @e[tag=damagedarea] at @s run particle minecraft:sweep_attack ~ ~.8 ~ 0.2 0.2 0.2 0 1 force
execute as @e[tag=damagedarea] at @s run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 2
execute as @e[tag=damagedarea] at @s run playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 0.5 2
execute as @e[tag=damagedarea] at @s run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 0.5 2
execute as @s at @s positioned ~ ~2 ~ facing entity @e[tag=damagedarea,distance=..10] feet run function oblivion:tech/raycast/cubeblade/effect

# Bleeding + Deal AoE damage
execute as @e[tag=damagedarea] run damage @s 12 minecraft:generic
execute as @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul,type=#oblivion:canbleed] at @s run effect give @s wither 2 2 true
tag @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul,type=#oblivion:canbleed] add bleedingcubeblade
tag @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul,type=#oblivion:canbleed] add bleeding

tag @e remove damagedarea

tag @s add obl.wasdamaged
schedule function oblivion:tech/removedamaged 1t
tag @a remove obl.avoidhit