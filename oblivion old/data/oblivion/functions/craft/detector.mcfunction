playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 0.7
particle block iron_block ~ ~ ~ 0.05 0.05 0.05 0 50
kill @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:20000}}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:3b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:observer",Count:10b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:comparator",Count:4b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",Count:5b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:string",Count:10b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:5b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch",Count:10b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:2b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:lightning_rod",Count:1b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:lodestone",Count:1b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:1b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:ender_eye",Count:3b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:note_block",Count:5b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_lamp",Count:1b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:amethyst_cluster",Count:5b}},limit=1,distance=..0.5]
summon item ~ ~ ~ {Item:{id:"amethyst_shard",tag:{CustomModelData:45001,display:{Name:'[{"text":"Детектор существ","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Находясь в инвентаре, оповестит игрока о","italic":false,"color":"gray"}]','[{"text":"только что появившихся мобов Обливиона поблизости.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Поместите Детектор существ в руку, чтобы узнать","italic":false,"color":"gray"}]','[{"text":"какие мобы Обливиона окружают вас и сколько их.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Посмотрите вверх держа детектор в ведущей руке, чтобы","italic":false,"color":"gray"}]','[{"text":"включить звуковой эффект при появлении моба,","italic":false,"color":"gray"}]','[{"text":"и вниз чтобы выключить.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Чтобы включить/выключить оповещение в чат,","italic":false,"color":"gray"}]','[{"text":"возьмите детектор во второстепенную руку,","italic":false,"color":"gray"}]','[{"text":"и посмотрите вверх/вниз соответственно.","italic":false,"color":"gray"}]']}},Count:1b}}