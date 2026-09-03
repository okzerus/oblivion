###   Q U E S T   T R I G G E R S
tag @s add obl.temp.triggering
execute if entity @s[tag=obl.looking_for_guide] unless entity @e[type=marker,tag=obl.the_guide.marker,distance=..100] unless entity @e[type=villager,tag=obl.encounter_guide,distance=..100] at @e[type=villager,distance=..30,limit=1,sort=nearest,predicate=oblivion:any_village] run function oblivion:tech/journal/quests/tech/triggers/encounter_guide/villager_count

tag @s remove obl.temp.triggering