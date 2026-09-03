execute store result score #offer.1 obl.villager.used run data get entity @s Offers.Recipes[0].uses
execute store result score #offer.2 obl.villager.used run data get entity @s Offers.Recipes[1].uses
execute store result score #offer.3 obl.villager.used run data get entity @s Offers.Recipes[2].uses
execute store result score #offer.4 obl.villager.used run data get entity @s Offers.Recipes[3].uses
execute store result score #offer.5 obl.villager.used run data get entity @s Offers.Recipes[4].uses
execute store result score #offer.6 obl.villager.used run data get entity @s Offers.Recipes[5].uses
execute store result score #offer.7 obl.villager.used run data get entity @s Offers.Recipes[6].uses
execute store result score #offer.8 obl.villager.used run data get entity @s Offers.Recipes[7].uses

execute if score #offer.1 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/1
execute if score #offer.2 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/2
execute if score #offer.3 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/3
execute if score #offer.4 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/4
execute if score #offer.5 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/5
execute if score #offer.6 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/6
execute if score #offer.7 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/7
execute if score #offer.8 obl.villager.used matches 1.. run function oblivion:tech/structures/list/savanna_library/watcher/offer_locking/8