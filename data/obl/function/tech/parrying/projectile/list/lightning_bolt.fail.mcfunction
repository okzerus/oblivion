###   Ф У Н К Ц И Я
## Выдаём временный тег игроку, парировавшему молнию
tag @s add obl.temp.parrying_lightning
## Наносим дополнительный урон от лица игрока, парировшего молнию.
execute as @e[type=#obl:all_mobs,distance=..6] run damage @s 12 obl:parried_lightning by @p[tag=obl.temp.parrying_lightning]

###   Э Ф Ф Е К Т Ы
## Звуки
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 1.6
playsound minecraft:item.totem.use master @a ~ ~ ~ 1 0.9
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.9
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 1.3
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 1 0.7
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1.6
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 1 1
## Частицы
particle minecraft:electric_spark ~ ~.5 ~ 0 0 0 2 100 force
particle minecraft:firework ~ ~.5 ~ 0 0 0 4 400 force
## Дополнительные молнии, не наносящие урон
summon lightning_bolt ~ ~-8 ~
summon lightning_bolt ~ ~-8 ~
## Призываем крипера для взрыва блоков
summon creeper ~ ~-128 ~ {Fuse:0,ExplosionRadius:5,Tags:["obl.temp.parried_lightning"],CustomName:["Парированная молния"]}
execute as @e[type=creeper,limit=1,sort=nearest,tag=obl.temp.parried_lightning] at @s run tp @s ~ ~127.3 ~

###   О Ч И С Т К А
## Забираем теги у игрока парировавшего молнию
tag @s remove obl.just_parried_fucking_lightning
tag @s remove obl.temp.parrying_lightning