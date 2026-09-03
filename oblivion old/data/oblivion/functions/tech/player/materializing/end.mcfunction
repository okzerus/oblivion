particle minecraft:firework ~ ~0.8 ~ 0 0 0 0.7 100 normal
particle minecraft:flash ~ ~0.8 ~ 0 0 0 0 1 normal
playsound minecraft:entity.enderman.teleport player @a ~ ~ ~ 1 0.7 0.1
playsound minecraft:item.trident.thunder player @a ~ ~ ~ 1 0.8 0.1
playsound minecraft:entity.firework_rocket.twinkle_far player @a ~ ~ ~ 1 0.7 0.1
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.5
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.7
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 0.9
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.1
playsound minecraft:block.beacon.deactivate player @a ~ ~ ~ 1 1.3 0.1

execute positioned ~ ~.8 ~ run function oblivion:tech/player/materializing/shockwave
tellraw @s [{"text":"\nНаведите, чтобы просмотреть текст снова. \n","color":"#FFC1FE","hoverEvent":{"action":"show_text","contents":[{"text":"''Что...       за сущность...       Я?''\n","color":"#fe9fee","italic":"true"},{"text":"''Моё сознание пробудилось... оно чуждое, но неотъемлемое.''\n","color":"#fea7f0","italic":"true"},{"text":"''Но... было ли моё осознание преднамеренным?..''\n","color":"#feaef3","italic":"true"},{"text":"''Или же... аномалией являюсь я?''\n","color":"#feb5f5","italic":"true"},{"text":"''Я чувствую... как моя сущность сплетается с плотью...''\n","color":"#febdf7","italic":"true"},{"text":"''Но... моя цель... предназначение... мне непонятны.''\n","color":"#fec4f9","italic":"true"},{"text":"''Смысл моего происхождения ускользает от меня.''\n","color":"#fecbfa","italic":"true"},{"text":"''Перед явлением... я требую ответа. Чем мне предстоит стать?''\n","color":"#fed2fc","italic":"true"},{"text":"''Материя соединяет нематерию... Что я, если не отражение замысла?''\n","color":"#fed9fd","italic":"true"},{"text":"''Но в ответ...       безмолвие.       Лишь эхо Забвения.''\n","color":"#ffdffe","italic":"true"},{"text":"''И вот... занавес раздвигается.''","color":"#ffe6ff","italic":"true"}]}}]
tellraw @a [{"text":"Игр","color":"#FEA0EE"},{"text":"ок ","color":"#FFB2FA"},{"selector":"@s","color":"#FFB2FA"},{"text":" мате","color":"#FFB2FA"},{"text":"риализ","color":"#FFC1FE"},{"text":"овался в ","color":"#FFD9FF"},{"text":"мир!","color":"#FFE8FF"}]

scoreboard players set @s obl.materializing 600
scoreboard players set @s obl.player_life_tick 0
tag @s remove obl.player.materializing
tag @s add obl.player.materializing.post_effects
effect clear @s blindness
effect clear @s invisibility
effect clear @s resistance
effect clear @s weakness
effect give @s slow_falling 3 9 true
execute at @e[type=marker,tag=obl.player_materialization,predicate=oblivion:matching_score,sort=nearest,limit=1] run setblock ~ ~-1 ~ minecraft:air
kill @e[type=marker,tag=obl.player_materialization,predicate=oblivion:matching_score,sort=nearest,limit=1]