playsound minecraft:entity.iron_golem.repair master @a ~ ~ ~ 1
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 0.7
particle block iron_block ~ ~ ~ 0.05 0.05 0.05 0 50
kill @e[type=item,nbt={Item:{id:"minecraft:clock",tag:{CustomModelData:20000}}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:iron_block",Count:5b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:observer",Count:4b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:comparator",Count:4b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:tinted_glass",Count:4b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:string",Count:15b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_block",Count:3b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:redstone_torch",Count:5b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:netherite_ingot",Count:1b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:copper_ingot",Count:10b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:raw_copper_block",Count:1b}},limit=1,distance=..0.5]
kill @e[type=item,nbt={Item:{id:"minecraft:tripwire_hook",Count:3b}},limit=1,distance=..0.5]
summon item ~ ~ ~ {Item:{id:"raw_iron",tag:{CustomModelData:45000,display:{Name:'[{"text":"КПК","italic":false,"color":"dark_aqua"}]',Lore:['[{"text":"Находясь в инвентаре, оповестит игрока о","italic":false,"color":"gray"}]','[{"text":"текущем дне недели во время рассвета.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"gray"}]','[{"text":"Поместите КПК в руку, чтобы узнать следующую информацию:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"+ Текущий день недели","italic":false,"color":"blue"}]','[{"text":"+ Общее число дней с начала года","italic":false,"color":"blue"}]','[{"text":"+ Кол-во произошедших событий на сервере","italic":false,"color":"blue"}]','[{"text":"+ Кол-во убитых игроком мобов из Обливиона","italic":false,"color":"blue"}]','[{"text":"+ Текущее событие","italic":false,"color":"blue"}]','[{"text":"+ Свободен ли Рождественский дух","italic":false,"color":"blue"}]','[{"text":"+ Ссылка на официальную википедию","italic":false,"color":"blue"}]']}},Count:1b}}