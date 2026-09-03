# Armor broken

function oblivion:rng
execute if score randomizer obl.rng matches 16..20 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run effect give @s unluck 10 0 false
execute if score randomizer obl.rng matches 16..20 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

# Hit particle

particle minecraft:sweep_attack ~ ~.8 ~ 0.2 0.2 0.2 0 1 force
particle minecraft:soul ~ ~.8 ~ 0.2 0.2 0.2 0.15 5 force
playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~ 1 2
playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 2

# Summon minion

execute if score randomizer obl.rng matches 1..15 unless entity @s[tag=minion] run summon minecraft:skeleton ~ ~ ~ {CustomName:'[{"text":"Миньон"}]',Health:15,Tags:["obl.difficultychanged",minion,nopersistentce],HandItems:[{id:iron_hoe,Count:1}],HandDropChances:[0f],Attributes:[{Name:"generic.max_health",Base:15f}]}
execute if score randomizer obl.rng matches 1..15 unless entity @s[tag=minion] run particle minecraft:soul_fire_flame ~ ~.5 ~ 0.3 0.6 0.3 0.1 70 force
execute if score randomizer obl.rng matches 1..15 unless entity @s[tag=minion] run playsound minecraft:entity.wither.ambient master @a ~ ~ ~ 1 2
execute if score randomizer obl.rng matches 1..15 unless entity @s[tag=minion] at @e[tag=minion,limit=1,sort=nearest] run summon snowball ~ ~2.3 ~ {Motion:[0.0,-1.0,0.0], Tags:["attack"]} 
execute if score randomizer obl.rng matches 1..15 unless entity @s[tag=minion] at @e[tag=minion,limit=1,sort=nearest] run data modify entity @e[tag=attack,limit=1,sort=nearest] Owner set from entity @e[tag=!minion,distance=..5,limit=1,sort=nearest,type=!item,type=!snowball,type=!experience_orb] UUID
execute if score randomizer obl.rng matches 1..15 unless entity @s[tag=minion] run scoreboard players add @p[advancements={oblivion:items/necromancer=true}] obl.necrocount 1

tag @s add obl.wasdamaged
schedule function oblivion:tech/removedamaged 1t