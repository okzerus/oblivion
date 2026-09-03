execute if entity @s[nbt={Fuse:1s}] run advancement grant @p[tag=obl.temp.parrying] only oblivion:advancements/weaponry/shield/additions/tnt.low_fuse
execute if entity @s[nbt={Fuse:2s}] run advancement grant @p[tag=obl.temp.parrying] only oblivion:advancements/weaponry/shield/additions/tnt.low_fuse
execute if entity @s[nbt={Fuse:3s}] run advancement grant @p[tag=obl.temp.parrying] only oblivion:advancements/weaponry/shield/additions/tnt.low_fuse
execute if entity @s[nbt={Fuse:4s}] run advancement grant @p[tag=obl.temp.parrying] only oblivion:advancements/weaponry/shield/additions/tnt.low_fuse
execute if entity @s[nbt={Fuse:5s}] run advancement grant @p[tag=obl.temp.parrying] only oblivion:advancements/weaponry/shield/additions/tnt.low_fuse

scoreboard players remove @s obl.parried_tnt.fuse 1
execute unless entity @s[tag=obl.projectile.reflected] run scoreboard players set @s obl.parried_tnt.fuse 60
execute store result entity @s Fuse short 1 run scoreboard players get @s obl.parried_tnt.fuse