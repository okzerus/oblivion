schedule function oblivion:accscd 5t

execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5009}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5009}}]}] at @s run function oblivion:items/accs/sun
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5009}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5009}}]}] at @s run function oblivion:items/accs/sun

execute as @a[nbt={Inventory:[{tag:{CustomModelData:4002}}]}] if score @s barrier.used matches 1 at @s run function oblivion:items/accs/barrierstonecd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5010}}]}] if score @s meteor.used matches 1 at @s run function oblivion:items/accs/meteorcd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5013}}]}] if score @s mothron.used matches 1 at @s run function oblivion:items/accs/mothronwingscd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5056}}]}] if score @s demon.used matches 1 at @s run function oblivion:items/accs/demonhorncd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5060}}]}] if score @s web.used matches 1 at @s run function oblivion:items/accs/magicwebcd

execute as @a[nbt={Inventory:[{tag:{CustomModelData:16000}}]}] if score @s cubeblade.used1 matches 1 at @s run function oblivion:items/accs/weapons/cubebladecd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:16000}}]}] if score @s cubeblade.used2 matches 1 at @s run function oblivion:items/accs/weapons/cubebladecd2
execute as @a[nbt={Inventory:[{tag:{CustomModelData:3555}}]}] if score @s muramasa.used matches 1 at @s run function oblivion:items/accs/weapons/muramasacd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:3556}}]}] if score @s yamato.used matches 1 at @s run function oblivion:items/accs/weapons/yamatocd

execute as @a[nbt={Inventory:[{tag:{CustomModelData:9898}}]}] if score @s amethyst.used1 matches 1 at @s run function oblivion:items/accs/weapons/amethystswordcd