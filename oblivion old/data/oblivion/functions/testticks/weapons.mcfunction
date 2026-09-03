schedule function oblivion:testticks/weapons 6t
# Weapons

execute as @a[nbt={SelectedItem:{tag:{CustomModelData:16000}}}] at @s run function oblivion:items/accs/weapons/cubeblade
execute as @a[nbt={Inventory:[{tag:{CustomModelData:16000}}]}] if score @s cubeblade.used1 matches 1 at @s run function oblivion:items/accs/weapons/cubebladecd
execute as @a[nbt={Inventory:[{tag:{CustomModelData:16000}}]}] if score @s cubeblade.used2 matches 1 at @s run function oblivion:items/accs/weapons/cubebladecd2
