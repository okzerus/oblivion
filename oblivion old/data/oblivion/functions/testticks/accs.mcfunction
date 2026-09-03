schedule function oblivion:testticks/accs 6t

# accessories

execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:4002}}]}] at @s run function oblivion:items/accs/barrierstone
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5010}}]}] at @s run function oblivion:items/accs/meteor
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5013}}]}] at @s run function oblivion:items/accs/mothronwings
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5056}}]}] at @s run function oblivion:items/accs/demonhorn
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5060}}]}] at @s run function oblivion:items/accs/magicweb

execute as @a[nbt={Inventory:[{tag:{CustomModelData:4002}}]}] if score @s barrier.used matches 1 at @s run function oblivion:items/accs/barrierstonecd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5010}}]}] if score @s meteor.used matches 1 at @s run function oblivion:items/accs/meteorcd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5013}}]}] if score @s mothron.used matches 1 at @s run function oblivion:items/accs/mothronwingscd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5056}}]}] if score @s demon.used matches 1 at @s run function oblivion:items/accs/demonhorncd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5060}}]}] if score @s web.used matches 1 at @s run function oblivion:items/accs/magicwebcd
