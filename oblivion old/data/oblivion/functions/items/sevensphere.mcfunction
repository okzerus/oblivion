execute as @e[type=item,nbt={Item:{tag:{CustomModelData:5057}}},distance=..2] run kill @s
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:5058}}},distance=..2] run kill @s
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:1441}}},distance=..2] run kill @s
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:5061}}},distance=..2] run kill @s
execute as @e[type=item,nbt={Item:{tag:{CustomModelData:3089}}},distance=..2] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:netherite_block",Count:15b}},distance=..2] run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",Count:5b}},distance=..2] at @s run kill @s
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star",tag:{starofsorrow:1b},Count:1b}},distance=..2] at @s run kill @s
particle minecraft:dust 1 0 0 1 ~ ~ ~ 1 1 1 0 100 force
particle minecraft:dust 1 0 0 1 ~ ~10 ~ 10 0 10 0 1000 force
particle minecraft:flame ~ ~10 ~ 10 0 10 0 1000 force
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 5 0.1
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 5 0.1
playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 5 0.1
playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 5 0.1
execute if score time oblivion matches 12500..23999 if score pearlmoon oblivion matches 1 run function oblivion:endevents/endpearlmoon
execute if score time oblivion matches 0..12500 if score greatday oblivion matches 1 run function oblivion:endevents/endgreatday
execute if score time oblivion matches 12500..23999 unless score bloodmoon oblivion matches 1 run function oblivion:night/startbloodmoon
execute if score time oblivion matches 0..12500 unless score solareclipse oblivion matches 1 run function oblivion:day/startsolareclipse
summon item ~ ~ ~ {Item:{id:"magma_cream",tag:{sevensphere:1b,mobacc:1b,CustomModelData:5353,display:{Name:'[{"text":"Сфера Небытия","italic":false,"color":"dark_red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Она есть, но её не существует.","italic":false,"color":"gray"}]','[{"text":"Постой, а может, она существует, но её нет?","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Когда в нижнем слоте аксессуара:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+ Носитель будет скрыт от всех ванильных не","italic":false,"color":"blue"}]','[{"text":"человекоподобных враждебных мобов","italic":false,"color":"blue"}]','[{"text":"+ Все ванильные дружелюбные мобы вокруг","italic":false,"color":"blue"}]','[{"text":"вас будут получать урон от отравления","italic":false,"color":"blue"}]','[{"text":"+ Красивые частицы","italic":false,"color":"blue"}]']},Enchantments:[{id:vanishing_curse,lvl:1}]},Count:1b}}
advancement grant @a[distance=..30] only oblivion:advancements/secret/creator