schedule function oblivion:particles 8t

# accessories

execute if entity @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5054}}]}] as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5054}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5054}}]}] at @s if block ~ ~-1 ~ #ice run function oblivion:items/accs/konki
execute if entity @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5053}}]}] as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5053}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5053}}]}] at @s if block ~ ~-1 ~ #snow run function oblivion:items/accs/snowball
execute if entity @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5053}}]}] as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5053}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5053}}]}] at @s if block ~ ~ ~ #snow run function oblivion:items/accs/snowball
execute if entity @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5052}}]}] as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5052}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5052}}]}] at @s if block ~ ~-1 ~ #sand run function oblivion:items/accs/storminbottle

execute if entity @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5054}}]}] as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5054}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5054}}]}] at @s if block ~ ~-1 ~ #ice run function oblivion:items/accs/konki
execute if entity @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5053}}]}] as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5053}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5053}}]}] at @s if block ~ ~-1 ~ #snow run function oblivion:items/accs/snowball
execute if entity @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5053}}]}] as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5053}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5053}}]}] at @s if block ~ ~ ~ #snow run function oblivion:items/accs/snowball
execute if entity @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5052}}]}] as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5052}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5052}}]}] at @s if block ~ ~-1 ~ #sand run function oblivion:items/accs/storminbottle

execute unless score obl.isday oblivion matches 1 as @a[tag=obl.biome.swamp] at @s run particle wax_on ~ 70 ~ 20 4 20 10 30 normal @s
execute unless score obl.isday oblivion matches 1 as @a[tag=obl.biome.forest] at @s if block ~ ~6 ~ #leaves run particle spore_blossom_air ~ 68 ~ 10 4 10 1 100 normal @s
execute unless score obl.isday oblivion matches 1 as @a[tag=obl.biome.roofed_forest] at @s if block ~ ~10 ~ #leaves run particle glow ~ 70 ~ 20 4 20 1 50 normal @s