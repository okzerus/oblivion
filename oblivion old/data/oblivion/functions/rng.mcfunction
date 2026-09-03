# Randomizer.
# Read https://minecraftcommands.github.io/wiki/questions/randomnumber for more, used UUID method.
# Thanks Minecraft Commands community for the help.

summon area_effect_cloud ~ ~ ~ {Tags:["obl.random_uuid"]}
execute store result score randomizer obl.rng run data get entity @e[type=area_effect_cloud,tag=obl.random_uuid,limit=1] UUID[0] 1
scoreboard players operation randomizer obl.rng %= randomizer obl.rng.range
kill @e[type=area_effect_cloud,tag=obl.random_uuid]

# Shifting the number by 1, because without it the number would be 0-99, instead of 1-100.

scoreboard players add randomizer obl.rng 1

# Send output to the chat for debug

tellraw @a[tag=obl.debug] {"score":{"name":"randomizer","objective":"obl.rng"}}

# Reset range (There are some functions that require random numbers to be generated higher than 100)
scoreboard players set randomizer obl.rng.range 100