title @s actionbar {"text":"Для успешной активации требуется эффект Невидимости!","color":"#7D29BB"}
effect give @s minecraft:blindness 1 0 true
particle minecraft:enchant ~ ~1.5 ~ 0 0 0 1 50
playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.6
playsound minecraft:entity.illusioner.mirror_move hostile @a ~ ~ ~ 1 0.8