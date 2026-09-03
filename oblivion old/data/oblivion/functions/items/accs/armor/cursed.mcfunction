scoreboard players add @s obl.cursereplace 1
particle dust 0 1 0 1 ~ ~1 ~ 0.3 0.6 0.3 0.1 10

execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:15}]}] run function oblivion:items/accs/armor/cursed/blindness
execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:2}]}] run function oblivion:items/accs/armor/cursed/slowness
execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:19}]}] run function oblivion:items/accs/armor/cursed/poison
execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:20}]}] run function oblivion:items/accs/armor/cursed/wither
execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:18}]}] run function oblivion:items/accs/armor/cursed/weakness
execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:4}]}] run function oblivion:items/accs/armor/cursed/mining_fatigue
execute if entity @s[scores={obl.cursereplace=3..},nbt={ActiveEffects:[{Id:17}]}] run function oblivion:items/accs/armor/cursed/hunger
execute if entity @s[scores={obl.cursereplace=3..}] run scoreboard players set @s obl.cursereplace 0

execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{cursedarmor:1b}},{Slot:102b,tag:{cursedarmor:1b}},{Slot:101b,tag:{cursedarmor:1b}},{Slot:100b,tag:{cursedarmor:1b}}],SelectedItem:{tag:{cursedarmorsword:1b}}},nbt={Inventory:[{Slot:18b,tag:{CustomModelData:7170}}]}] run advancement grant @s only oblivion:advancements/mobs/cursedarmorfullset
execute if entity @s[nbt={Inventory:[{Slot:103b,tag:{cursedarmor:1b}},{Slot:102b,tag:{cursedarmor:1b}},{Slot:101b,tag:{cursedarmor:1b}},{Slot:100b,tag:{cursedarmor:1b}}],SelectedItem:{tag:{cursedarmorsword:1b}}},nbt={Inventory:[{Slot:9b,tag:{CustomModelData:7170}}]}] run advancement grant @s only oblivion:advancements/mobs/cursedarmorfullset