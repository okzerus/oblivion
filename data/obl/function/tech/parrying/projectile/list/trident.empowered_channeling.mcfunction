###   Ф У Н К Ц И Я
## Сохраняем айди текущей сущности во временный селектор
scoreboard players operation #id.temp obl.id = @s obl.id.target
## Выдаём временный тег для ИГРОКА, чей айди соответствует этому снаряду.
tag @p[predicate=obl:matching_score] add obl.temp.empowered_channeling

## Выдаём достижение за усиленный громовержец игроку, парировавшему трезубец.
advancement grant @a[tag=obl.temp.empowered_channeling] only obl:advancements/weaponry/shield/additions/channeling
## Наносим дополнительный урон от лица игрока, парировавшего трезубец.
execute as @e[type=#obl:all_mobs,distance=..6] run damage @s 12 obl:parried_projectile by @p[tag=obl.temp.empowered_channeling]

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
summon creeper ~ ~-128 ~ {fuse:0,ExplosionRadius:3,Tags:["obl.temp.channeling_creeper"],CustomName:["Усиленная молния"],active_effects:[{id:invisibility,duration:-1,show_particles:0b}]}
execute as @e[type=creeper,limit=1,sort=nearest,tag=obl.temp.channeling_creeper] at @s run tp @s ~ ~127.3 ~

###   О Ч И С Т К А
## Убираем временный тег со всех игроков.
tag @a remove obl.temp.empowered_channeling