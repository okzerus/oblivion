###   A R M O R   B R E A K I N G
execute if score randomizer obl.rng matches 51..63 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run scoreboard players set @s obl.armor_points.removed 7
execute if score randomizer obl.rng matches 51..63 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run scoreboard players set @s obl.broken_armor 180
execute if score randomizer obl.rng matches 51..63 if predicate oblivion:has.armor unless entity @s[tag=obl.brokenarmor] run function oblivion:tech/armorbreaking/add

###   B L E E D I N G
## Set bleeding duration. Remove -X ticks for every armor piece that is present.
execute unless entity @s[tag=obl.bleeding] run scoreboard players set @s obl.bleeding 400
execute unless entity @s[tag=obl.bleeding] run scoreboard players set @s obl.bleeding.power 2
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.helmet unless entity @s[tag=obl.brokenarmor] run scoreboard players remove @s obl.bleeding 50
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.chestplate unless entity @s[tag=obl.brokenarmor] run scoreboard players remove @s obl.bleeding 50
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.leggings unless entity @s[tag=obl.brokenarmor] run scoreboard players remove @s obl.bleeding 50
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.boots unless entity @s[tag=obl.brokenarmor] run scoreboard players remove @s obl.bleeding 50
## Set bleeding chance. Remove -X% chance for every armor piece that is present. Don't remove anything if the armor is broken.
execute unless entity @s[tag=obl.bleeding] run scoreboard players set obl.temp.bleeding_chance obl.rng 30
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.helmet unless entity @s[tag=obl.brokenarmor] run scoreboard players remove obl.temp.bleeding_chance obl.rng 5
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.chestplate unless entity @s[tag=obl.brokenarmor] run scoreboard players remove obl.temp.bleeding_chance obl.rng 5
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.leggings unless entity @s[tag=obl.brokenarmor] run scoreboard players remove obl.temp.bleeding_chance obl.rng 5
execute unless entity @s[tag=obl.bleeding] if predicate oblivion:has.boots unless entity @s[tag=obl.brokenarmor] run scoreboard players remove obl.temp.bleeding_chance obl.rng 5
execute unless entity @s[tag=obl.bleeding] if score randomizer obl.rng <= obl.temp.bleeding_chance obl.rng unless entity @s[tag=obl.cantbleed] run function oblivion:tech/bleeding_enabled

###   O N   A T T A C K E R
execute if score randomizer obl.rng <= obl.temp.bleeding_chance obl.rng run advancement grant @e[type=player,tag=obl.temp.success_hit,limit=1] only oblivion:advancements/weapons/scythe/bleeding
execute if score randomizer obl.rng matches 51..63 run advancement grant @e[type=player,tag=obl.temp.success_hit,limit=1] only oblivion:advancements/weapons/scythe/break_armor
execute if score randomizer obl.rng matches 51..63 if predicate oblivion:has.diamond_armor run advancement grant @e[type=player,tag=obl.temp.success_hit,limit=1] only oblivion:advancements/weapons/scythe/break_diamond_armor