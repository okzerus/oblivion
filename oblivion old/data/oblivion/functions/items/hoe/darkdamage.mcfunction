# Armor broken

function oblivion:rng
execute if score randomizer obl.rng matches 1..15 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 10 0 false
execute if score randomizer obl.rng matches 1..15 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add


# Set AoE tags to mobs nearby (excluding attacker)

tag @e[type=#oblivion:aoe,distance=..5,limit=6] add damagedarea 
execute as @a[advancements={oblivion:items/dark_scythe=true}] at @s run execute at @e[tag=damagedarea,distance=..5] run scoreboard players add @s obl.darkmobcount 1
execute as @a[advancements={oblivion:items/dark_scythe=true}] at @s run tag @s remove damagedarea

# Hit particle

execute as @e[tag=damagedarea] at @s run particle minecraft:sweep_attack ~ ~.8 ~ 0.2 0.2 0.2 0 1 force
execute as @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul] at @s run particle block obsidian ~ ~.5 ~ 0.2 0.2 0.2 0 10 force
execute as @e[tag=damagedarea] at @s run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 2

# Bleeding + Deal AoE damage

execute as @e[tag=damagedarea,type=!#oblivion:undead] if entity @s[type=#oblivion:aoe] at @s run effect give @s instant_damage 1 0 true
execute as @e[tag=damagedarea,type=#oblivion:undead] if entity @s[type=#oblivion:aoe] at @s run effect give @s instant_health 1 0 true
execute as @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul,type=#oblivion:canbleed] at @s run effect give @s wither 2 2 true
tag @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul,type=#oblivion:canbleed] add bleedingdark
tag @e[tag=damagedarea,tag=!obl.cantbleed,tag=!obl.witherinvul,type=#oblivion:canbleed] add bleeding

tag @e[tag=damagedarea] remove damagedarea