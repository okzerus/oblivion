schedule function oblivion:tick2 3t

# Functions for mobs

function oblivion:tech/abilities

# Functions for weapons

execute as @a[nbt={Inventory:[{Slot:0b,tag:{bloodknife:1b}}]}] at @s run function oblivion:items/accs/weapons/knife/invis3tick
execute as @a[nbt={Inventory:[{tag:{bloodknife:1b}}],ActiveEffects:[{Id:14b,Amplifier:9b},{Id:5,Amplifier:2b}]}] unless entity @s[nbt={SelectedItem:{id:"minecraft:iron_sword",tag:{bloodknife:1b}}}] run effect clear @s strength
execute as @a[nbt={Inventory:[{tag:{bloodknife:1b}}],ActiveEffects:[{Id:14,Amplifier:9b}]}] unless entity @s[tag=obl.noarmor] run effect clear @s invisibility
execute as @a[nbt={Inventory:[{tag:{bloodknife:1b}}],ActiveEffects:[{Id:14,Amplifier:9b}]}] unless entity @s[nbt={Inventory:[{Slot:0b,tag:{bloodknife:1b}}]}] run effect clear @s invisibility
