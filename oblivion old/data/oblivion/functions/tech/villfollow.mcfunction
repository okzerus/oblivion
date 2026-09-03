tag @e[type=villager,limit=1,sort=nearest,nbt=!{Leash:{}}] add obl.villfollow
data merge entity @e[tag=obl.villfollow,limit=1,sort=nearest] {Leashed:1b}
data modify entity @e[tag=obl.villfollow,limit=1,sort=nearest] Leash.UUID set from entity @s UUID

clear @a[predicate=oblivion:items/hold.lead,scores={obl.villfollow=1..},gamemode=!creative] lead 1

tag @e[tag=obl.villfollow] remove obl.villfollow
scoreboard players set @a obl.villfollow 0