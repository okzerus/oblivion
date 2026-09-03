execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.leatherworker] unless entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.armorer] unless entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.farmer] unless entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.butcher] unless entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.cleric] unless entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.librarian] unless entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.toolsmith] unless entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.weaponsmith] unless entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.mason] unless entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.shepherd] unless entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.fletcher] unless entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.nitwit] unless entity @s[nbt={VillagerData:{profession:"minecraft:nitwit"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.fisherman] unless entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.cartographer] unless entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run function oblivion:qol/villagers/profession_updating.update
execute if entity @s[tag=obl.villager.profession_updated,tag=obl.villager.profession.none] unless entity @s[nbt={VillagerData:{profession:"minecraft:none"}}] run function oblivion:qol/villagers/profession_updating.update

execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:leatherworker"}}] run tag @s add obl.villager.profession.leatherworker
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:armorer"}}] run tag @s add obl.villager.profession.armorer
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:farmer"}}] run tag @s add obl.villager.profession.farmer
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:butcher"}}] run tag @s add obl.villager.profession.butcher
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:cleric"}}] run tag @s add obl.villager.profession.cleric
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:librarian"}}] run tag @s add obl.villager.profession.librarian
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:toolsmith"}}] run tag @s add obl.villager.profession.toolsmith
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:weaponsmith"}}] run tag @s add obl.villager.profession.weaponsmith
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:mason"}}] run tag @s add obl.villager.profession.mason
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:shepherd"}}] run tag @s add obl.villager.profession.shepherd
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:fletcher"}}] run tag @s add obl.villager.profession.fletcher
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:nitwit"}}] run tag @s add obl.villager.profession.nitwit
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:fisherman"}}] run tag @s add obl.villager.profession.fisherman
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:cartographer"}}] run tag @s add obl.villager.profession.cartographer
execute unless entity @s[tag=obl.villager.profession_updated] if entity @s[nbt={VillagerData:{profession:"minecraft:none"}}] run tag @s add obl.villager.profession.none

tag @s add obl.villager.profession_updated