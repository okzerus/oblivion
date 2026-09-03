tp @s ~ ~-256 ~
kill @s
summon item ~ ~ ~ {Item:{id:"potion",tag:{CustomPotionColor:16711680,display:{Name:'[{"text":"Пикси в бутылке","italic":false,"color":"aqua"}]',Lore:['[{"text":"Положите бутылку во второстепенную руку,","italic":false,"color":"gray"}]','[{"text":"чтобы выпустить Пикси.","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"При применении:","italic":false,"color":"dark_purple"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Исцеление V","italic":false,"color":"blue"}]']},HideFlags:32,CustomPotionEffects:[{Id:6,Duration:1,Amplifier:4}],pixie:1b},Count:1b}}
playsound minecraft:entity.rabbit.hurt master @a ~ ~ ~ 1 0.1
advancement grant @a[distance=..10] only oblivion:advancements/mobs/overworld/pixiebottle
kill @e[type=item,nbt={Item:{id:"minecraft:glass_bottle",Count:1b}},limit=1,sort=nearest]