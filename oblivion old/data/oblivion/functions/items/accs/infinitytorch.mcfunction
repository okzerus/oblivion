execute if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:torch"}]}] run particle flame ~ ~.1 ~ 1 0 1 0 10
execute if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:iron_ingot"}]}] run particle flame ~ ~.1 ~ 1 0 1 0 10
execute if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:honeycomb"}]}] run particle flame ~ ~.1 ~ 1 0 1 0 10
execute if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:soul_sand"}]}] run particle soul_fire_flame ~ ~.1 ~ 1 0 1 0 10
execute if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:glowstone_dust"}]}] run particle soul_fire_flame ~ ~.1 ~ 1 0 1 0 10

execute unless score @s infinitytorch matches 1 if entity @s[x_rotation=-90] run function oblivion:items/accs/effects/infinitytorchon
execute if score @s infinitytorch matches 1 if entity @s[x_rotation=90] run function oblivion:items/accs/effects/infinitytorchoff

execute if predicate oblivion:dark if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:torch"}]}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run function oblivion:items/accs/effects/infinitytorchsetblock/torch
execute if predicate oblivion:dark if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:soul_sand"}]}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run function oblivion:items/accs/effects/infinitytorchsetblock/soultorch
execute if predicate oblivion:dark if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:iron_ingot"}]}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run function oblivion:items/accs/effects/infinitytorchsetblock/lantern
execute if predicate oblivion:dark if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:glowstone_dust"}]}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run function oblivion:items/accs/effects/infinitytorchsetblock/soullantern
execute if predicate oblivion:dark if score @s infinitytorch matches 1 if entity @s[nbt={Inventory:[{Slot:8b,id:"minecraft:honeycomb"}]}] if block ~ ~ ~ air unless block ~ ~-1 ~ air run function oblivion:items/accs/effects/infinitytorchsetblock/candle

execute if score @s torch.used matches 1 run scoreboard players add @s torch.cd 1
execute if score @s torch.cd matches 25 run tellraw @s {"text":"Факел вечного огня готов!","color":"green"}
execute if score @s torch.cd matches 25 run playsound minecraft:block.note_block.pling master @a ~ ~ ~ 1 1
execute if score @s torch.cd matches 25 run scoreboard players add @s torch.used 0

execute unless score @s torch.used matches 1 if block ~ ~1 ~ cobweb run particle flame ~ ~3 ~ 6 4 6 0 200
execute unless score @s torch.used matches 1 if block ~ ~1 ~ cobweb run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1
execute unless score @s torch.used matches 1 if block ~ ~1 ~ cobweb run fill ~20 ~4 ~20 ~-20 ~-4 ~-20 air replace minecraft:cobweb
execute unless score @s torch.used matches 1 if block ~ ~1 ~ cobweb run scoreboard players set @s torch.used 1

execute unless score @s torch.used matches 1 if block ~ ~ ~ cobweb run particle flame ~ ~3 ~ 6 4 6 0 200
execute unless score @s torch.used matches 1 if block ~ ~ ~ cobweb run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1
execute unless score @s torch.used matches 1 if block ~ ~ ~ cobweb run fill ~20 ~4 ~20 ~-20 ~-4 ~-20 air replace minecraft:cobweb
execute unless score @s torch.used matches 1 if block ~ ~ ~ cobweb run scoreboard players set @s torch.used 1