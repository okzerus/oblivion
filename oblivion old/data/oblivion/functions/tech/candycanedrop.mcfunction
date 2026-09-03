execute if score xmassoul oblivion matches 1 run function oblivion:rng

execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 1..5 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:golden_carrot",tag:{CustomModelData:12500,display:{Name:'[{"text":"Рождественский леденец","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"При применении:","italic":false}]','[{"text":"Мгновенное лечение","italic":false,"color":"blue"}]','[{"text":"Сопротивление (0:03)","italic":false,"color":"blue"}]']}},Count:1b}}
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 1..5 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run particle block red_concrete ~ ~.5 ~ 0.2 0.2 0.2 0 15 force
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 1..5 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run particle block white_concrete ~ ~.5 ~ 0.2 0.2 0.2 0 15 force
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 1..5 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3

execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 6 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chest",tag:{BlockEntityTag:{LootTable:"oblivion:xmas/resources"},display:{Name:'[{"text":"Красный подарок","italic":false,"color":"red"}]',Lore:['[{"text":"О, это что, мне?","italic":false,"color":"gray"}]']}},Count:1b}}
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 6 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run particle block red_concrete ~ ~.5 ~ 0.2 0.2 0.2 0 15 force
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 6 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3

execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 7 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chest",tag:{BlockEntityTag:{LootTable:"oblivion:xmas/blocksnfood"},display:{Name:'[{"text":"Зелёный подарок","italic":false,"color":"green"}]',Lore:['[{"text":"О, это что, мне?","italic":false,"color":"gray"}]']}},Count:1b}}
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 7 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run particle block green_concrete ~ ~.5 ~ 0.2 0.2 0.2 0 15 force
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 7 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3

execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 8 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:chest",tag:{BlockEntityTag:{LootTable:"oblivion:xmas/gift_heads"},display:{Name:'[{"text":"Синий подарок","italic":false,"color":"aqua"}]',Lore:['[{"text":"О, это что, мне?","italic":false,"color":"gray"}]']}},Count:1b}}
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 8 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run particle block blue_concrete ~ ~.5 ~ 0.2 0.2 0.2 0 15 force
execute if score xmassoul oblivion matches 1 if score randomizer obl.rng matches 8 as @e[sort=nearest,limit=1,nbt={HurtTime:10s}] at @s run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1.3



advancement revoke @s only oblivion:mobs/candycane