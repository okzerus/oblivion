schedule function oblivion:accessories 50t

# Slot 9

execute if score obl.isday oblivion matches 0 as @a[nbt={Dimension:"minecraft:overworld"},nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5002}}]},distance=0..] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5002}}]}] at @s run function oblivion:items/accs/lanternblue
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5011}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5011}}]}] at @s if predicate oblivion:in_water if entity @s[y=50,dy=-150] run function oblivion:items/accs/seaexplorer
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5004}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5004}}]}] at @s if entity @s[y=50,dy=-50] run function oblivion:items/accs/lanterngreen
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:9899}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:9899}}]}] at @s run function oblivion:items/accs/lanternamethyst
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5003}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5003}}]}] at @s run function oblivion:items/accs/lanternred
execute if score obl.isday oblivion matches 1 as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5001}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5001}}]}] at @s run function oblivion:items/accs/lanternyellow
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5005}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5005}}]}] at @s run function oblivion:items/accs/lavaexplorer
execute as @a[nbt={Dimension:"minecraft:the_nether"},nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5050}}]},distance=0..] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5050}}]}] at @s run function oblivion:items/accs/holyquartz
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5008}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5008}}]}] at @s run function oblivion:items/accs/grisaiafruit
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5996}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5996}}]}] at @s run function oblivion:items/accs/hungerapple
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5059}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5059}}]}] at @s run function oblivion:items/accs/nuclearfist
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5055}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5055}}]}] at @s run function oblivion:items/accs/rottenapple
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5063}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5063}}]}] at @s run function oblivion:items/accs/infinitytorch
execute as @a[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5081}}]}] unless entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5081}}]}] at @s run function oblivion:items/accs/infinitytorch
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:9b,tag:{CustomModelData:20000}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:clock",Slot:18b,tag:{CustomModelData:20000}}]}] at @s run function oblivion:items/accs/clock

# Slot 18

execute if score obl.isday oblivion matches 0 as @a[nbt={Dimension:"minecraft:overworld"},nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5002}}]},distance=0..] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5002}}]}] at @s run function oblivion:items/accs/lanternblue
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5011}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5011}}]}] at @s if predicate oblivion:in_water if entity @s[y=50,dy=-150] run function oblivion:items/accs/seaexplorer
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5004}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5004}}]}] at @s if entity @s[y=50,dy=-50] run function oblivion:items/accs/lanterngreen
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:9899}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:9899}}]}] at @s run function oblivion:items/accs/lanternamethyst
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5003}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5003}}]}] at @s run function oblivion:items/accs/lanternred
execute if score obl.isday oblivion matches 1 as @a[nbt={Dimension:"minecraft:overworld"},nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5001}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5001}}]}] at @s run function oblivion:items/accs/lanternyellow
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5005}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5005}}]}] at @s run function oblivion:items/accs/lavaexplorer
execute as @a[nbt={Dimension:"minecraft:the_nether"},nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5050}}]},distance=0..] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5050}}]}] at @s run function oblivion:items/accs/holyquartz
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5008}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5008}}]}] at @s run function oblivion:items/accs/grisaiafruit
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5996}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5996}}]}] at @s run function oblivion:items/accs/hungerapple
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5059}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5059}}]}] at @s run function oblivion:items/accs/nuclearfist
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5055}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5055}}]}] at @s run function oblivion:items/accs/rottenapple
execute as @a[nbt={id:"minecraft:rotten_flesh",Inventory:[{Slot:18b,tag:{CustomModelData:5051}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,id:"minecraft:rotten_flesh",tag:{CustomModelData:5051}}]}] at @s run function oblivion:items/accs/flesh
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5353}}]}] at @s run function oblivion:items/accs/sevensphere
execute as @a[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5063}}]}] unless entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5063}}]}] at @s run function oblivion:items/accs/infinitytorch
execute as @a[nbt={Inventory:[{id:"minecraft:clock",Slot:18b,tag:{CustomModelData:20000}}]}] unless entity @s[nbt={Inventory:[{id:"minecraft:clock",Slot:9b,tag:{CustomModelData:20000}}]}] at @s run function oblivion:items/accs/clock

# Armor

execute as @a[nbt={Inventory:[{Slot:103b,tag:{vikinghelmet:1b}},{Slot:-106b,tag:{vikingshield:1b}}],SelectedItem:{tag:{vikingaxe:1b}}}] at @s run function oblivion:items/accs/vikingset
execute if score bloodmoon oblivion matches 1 as @a[nbt={Inventory:[{Slot:102b,tag:{necrochest:1b}},{Slot:101b,tag:{necroleggings:1b}},{Slot:100b,tag:{necroboots:1b}}]}] at @s run function oblivion:items/accs/armor/necroset
execute as @a[nbt={Inventory:[{Slot:103b,tag:{CustomModelData:5000}},{Slot:102b,tag:{CustomModelData:5000}},{Slot:101b,tag:{CustomModelData:5000}},{Slot:100b,tag:{CustomModelData:5000}}]}] at @s run function oblivion:items/accs/armor/caramel
execute as @a[nbt={Inventory:[{Slot:103b,tag:{cursedarmor:1b}},{Slot:102b,tag:{cursedarmor:1b}},{Slot:101b,tag:{cursedarmor:1b}},{Slot:100b,tag:{cursedarmor:1b}}]}] at @s run function oblivion:items/accs/armor/cursed
execute if score xmasmoon oblivion matches 1 as @a[nbt={Inventory:[{Slot:102b,tag:{CustomModelData:2002}},{Slot:101b,tag:{CustomModelData:2002}},{Slot:100b,tag:{CustomModelData:2002}}]}] at @s run function oblivion:items/accs/armor/grinch

# Weapons

execute if score time oblivion matches 0..12500 as @a[nbt={Dimension:"minecraft:overworld"},nbt={SelectedItem:{tag:{CustomModelData:4001}}}] at @s run function oblivion:items/accs/weapons/lightsword
execute if score time oblivion matches 12500..23999 as @a[nbt={Dimension:"minecraft:overworld"},nbt={SelectedItem:{tag:{CustomModelData:4004}}}] at @s run function oblivion:items/accs/weapons/nightedge
execute as @a[nbt={Inventory:[{tag:{CustomModelData:5995}}]}] at @s run function oblivion:items/accs/weapons/hungerswordloop
execute as @a[nbt={ActiveEffects:[{Id:14}],SelectedItem:{tag:{ghostpickaxe:1b}}},distance=0..] at @s run function oblivion:items/ghostpickaxe