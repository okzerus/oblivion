schedule function oblivion:totick/teams 60t

# Team / mob accessories

execute as @a[nbt=!{Inventory:[{Slot:9b,tag:{CustomModelData:5056}}]},tag=demonhorn] run team leave @s
execute as @a[nbt=!{Inventory:[{Slot:18b,tag:{mobacc:1b}}]},tag=!demonhorn] run team leave @s
execute as @a[nbt=!{Inventory:[{Slot:9b,tag:{CustomModelData:5056}}]},tag=demonhorn] run tag @s remove demonhorn

# add to team
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5057}}]}] at @s run function oblivion:items/accs/mobs/skeletons
execute as @a[nbt={Inventory:[{id:"minecraft:rotten_flesh",Slot:18b,tag:{CustomModelData:1441}}]}] at @s run function oblivion:items/accs/mobs/zombies
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5058}}]}] at @s run function oblivion:items/accs/mobs/creepers
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5061}}]}] at @s run function oblivion:items/accs/mobs/spiders
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5056}}]}] at @s run function oblivion:items/accs/mobs/piglins

# remove from team
execute as @e[team=spiders] at @s if entity @a[distance=30..] run function oblivion:items/accs/mobs/spidersleave
execute as @e[team=skeletons] at @s if entity @a[distance=30..] run function oblivion:items/accs/mobs/skeletonsleave
execute as @e[team=zombies] at @s if entity @a[distance=30..] run function oblivion:items/accs/mobs/zombiesleave
execute as @e[team=creepers] at @s if entity @a[distance=30..] run function oblivion:items/accs/mobs/creepersleave
execute as @e[team=piglins] at @s if entity @a[distance=30..] run function oblivion:items/accs/mobs/piglinsleave
# remove player




execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5353}}]}] at @s run function oblivion:items/accs/mobs/everyone
execute as @e[team=everyone] at @s if entity @a[distance=30..] run function oblivion:items/accs/mobs/everyoneleave