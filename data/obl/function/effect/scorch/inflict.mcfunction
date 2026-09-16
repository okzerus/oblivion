## Функция
tag @s add obl.effect.scorch
scoreboard players set @s[scores={obl.effect.scorch.strength=..0}] obl.effect.scorch.strength 1

## Оповещение над сущностью
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Ожог!",color:"#eb5721"},background:905969664,billboard:"center",Tags:["obl.announce.scorch","obl.announcement_marker"]}

## Оповещение на экран
title @s times 0 30 10
title @s title {"text":"ОЖОГ!","italic":true,"color":"#eb5721"}
title @s subtitle {"text":"ПОТЕРЯ ЗДОРОВЬЯ!","italic":true,"color":"#c73916"}

## Спецэффекты
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.7
particle lava ~ ~0.25 ~ 0.2 0.2 0.2 0 30
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30
particle large_smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30