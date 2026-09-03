tag @s remove obl.villager.profession.leatherworker
tag @s remove obl.villager.profession.armorer
tag @s remove obl.villager.profession.farmer
tag @s remove obl.villager.profession.butcher
tag @s remove obl.villager.profession.cleric
tag @s remove obl.villager.profession.librarian
tag @s remove obl.villager.profession.toolsmith
tag @s remove obl.villager.profession.weaponsmith
tag @s remove obl.villager.profession.mason
tag @s remove obl.villager.profession.shepherd
tag @s remove obl.villager.profession.fletcher
tag @s remove obl.villager.profession.nitwit
tag @s remove obl.villager.profession.fisherman
tag @s remove obl.villager.profession.cartographer
tag @s remove obl.villager.profession.none

execute if entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run tag @s add obl.villager.profession.leatherworker
execute if entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run tag @s add obl.villager.profession.armorer
execute if entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run tag @s add obl.villager.profession.farmer
execute if entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run tag @s add obl.villager.profession.butcher
execute if entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run tag @s add obl.villager.profession.cleric
execute if entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run tag @s add obl.villager.profession.librarian
execute if entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run tag @s add obl.villager.profession.toolsmith
execute if entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run tag @s add obl.villager.profession.weaponsmith
execute if entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run tag @s add obl.villager.profession.mason
execute if entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run tag @s add obl.villager.profession.shepherd
execute if entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run tag @s add obl.villager.profession.fletcher
execute if entity @s[nbt={VillagerData:{profession:"minecraft:nitwit"}}] run tag @s add obl.villager.profession.nitwit
execute if entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run tag @s add obl.villager.profession.fisherman
execute if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run tag @s add obl.villager.profession.cartographer
execute if entity @s[nbt={VillagerData:{profession:"minecraft:none"}}] run tag @s add obl.villager.profession.none

summon armor_stand ~ ~2.3 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Забвение:","color":"gold"}]',CustomNameVisible:1b}
summon armor_stand ~ ~2 ~ {Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,Tags:["obl.announcement_marker"],CustomName:'[{"text":"Профессия обновлена!","color":"yellow"}]',CustomNameVisible:1b}