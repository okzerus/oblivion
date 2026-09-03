effect give @s speed 3 3 false
effect give @s resistance 2 0 false
particle dust 0.7 0.7 0.2 1 ~ ~1 ~ 0.3 0.6 0.3 0 10 normal

execute if entity @s[nbt={Inventory:[{Slot:9b,tag:{CustomModelData:5002}}]}] run advancement grant @s[advancements={oblivion:advancements/accs/other/daynight=false}] only oblivion:advancements/accs/other/daynight
execute if entity @s[nbt={Inventory:[{Slot:18b,tag:{CustomModelData:5002}}]}] run advancement grant @s[advancements={oblivion:advancements/accs/other/daynight=false}] only oblivion:advancements/accs/other/daynight