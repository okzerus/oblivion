schedule function oblivion:playersheduled2 30t

# Virus potion

execute as @e[type=#oblivion:canbleed,tag=!obl.infected,tag=!obl.curingtick,tag=!pixie,tag=!ragezombie,tag=!obl.virusimmuny] if predicate oblivion:should.infect at @s run function oblivion:tech/virus/infected
execute as @e[tag=obl.infected] at @s run function oblivion:tech/virus/tick
execute as @e[tag=obl.curingtick] at @s run function oblivion:tech/virus/curingtick
execute as @a if score @s infectedvill matches 50.. run advancement grant @s only oblivion:advancements/items/virusinfectvillagers
execute as @a if score @s infectedvill matches 1.. at @s unless entity @e[type=villager,tag=obl.infected,distance=..100] run scoreboard players set @s infectedvill 0

# Fireballs

execute as @e[tag=meteorfireball] at @s run scoreboard players add @s oblivion 1
execute as @e[tag=meteorfireball] at @s if score @s oblivion matches 20.. run function oblivion:tech/accsfireballoutoftime

execute as @e[nbt={Dimension:"minecraft:overworld"},type=fireball,distance=0..,tag=!mothronfireball,tag=!meteorfireball,tag=!ghastfireball] at @s if entity @e[type=ghast,distance=..150] run tag @s add ghastfireball
execute as @e[nbt={Dimension:"minecraft:overworld"},type=fireball,distance=0..,tag=!mothronfireball,tag=!meteorfireball,tag=!ghastfireball] run kill @s

# Titans defense

execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:3s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:4s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:5s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:6s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:7s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense2
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:8s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense2
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:9s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense2
execute as @a[nbt={Inventory:[{Slot:-106b,tag:{CustomModelData:20000,Enchantments:[{id:"minecraft:unbreaking",lvl:10s}]}}]}] at @s run function oblivion:items/accs/weapons/titansdefense3

# PDA

execute as @a[nbt={SelectedItem:{id:"minecraft:raw_iron",tag:{CustomModelData:45000}}}] unless score @s kpk matches 1 run function oblivion:tech/kpk
execute as @a[nbt=!{SelectedItem:{id:"minecraft:raw_iron",tag:{CustomModelData:45000}}}] if score @s kpk matches 1 run scoreboard players set @s kpk 0

# Detector

execute as @a[nbt={SelectedItem:{id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}}] unless score @s detector matches 1 unless score @s detector.use matches 1 run function oblivion:tech/detector
execute as @a[nbt=!{SelectedItem:{id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}}] if score @s detector matches 1 run scoreboard players set @s detector 0
execute as @a[nbt={SelectedItem:{id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}}] unless score @s obl.soundnot matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/detector/sound_on
execute as @a[nbt={SelectedItem:{id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}}] if score @s obl.soundnot matches 1 if entity @s[x_rotation=90] run function oblivion:items/accs/effects/detector/sound_off
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}]}] unless score @s obl.chatnot matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/detector/chat_on
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}]}] if score @s obl.chatnot matches 1 if entity @s[x_rotation=90] run function oblivion:items/accs/effects/detector/chat_off
execute as @a[nbt={Inventory:[{id:"minecraft:amethyst_shard",tag:{CustomModelData:45001}}]}] if score @s detector.use matches 1 run function oblivion:items/accs/effects/detector/cd

# Other

execute as @a[tag=horntravel] at @s run function oblivion:items/accs/effects/demonhorntraveleffects
execute as @a[tag=horntravel] at @s run tag @s remove horntravel

execute as @e[tag=smell] at @s run function oblivion:tech/smell

execute as @e[tag=pixietransform] at @s run function oblivion:tech/abilities/amethystpixietransform

execute as @a[tag=inbattlewithboss,tag=!inbattlewithpixie,tag=!inbattlewithdevil,tag=!inbattlewithhunger,tag=!inbattlewitharmor] run tag @s remove inbattlewithboss

# Mob ambients

execute at @a as @e[tag=obl.mob,distance=..20,limit=2,sort=random] at @s run function oblivion:ambient