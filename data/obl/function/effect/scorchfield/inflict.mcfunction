# Из item/weapon/crack_of_dawn/hit



###   Э Ф Ф Е К Т Ы
## Частицы и звуки при наложении эффекта.
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.5
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.65
playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.8
playsound minecraft:block.campfire.crack hostile @a ~ ~ ~ 1 0.5
playsound minecraft:block.campfire.crack hostile @a ~ ~ ~ 1 0.65
playsound minecraft:block.campfire.crack hostile @a ~ ~ ~ 1 0.8
particle lava ~ ~0.25 ~ 0.2 0.2 0.2 0 5
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 15
particle large_smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 15



###   С Т А Р Т
## Выдаём тег для сущности под эффектом. (Используется для тиканья из on.player.1t в tech/effect/buff/scorchfield/tick)
tag @s add obl.effect.scorch



###   О П О В Е Щ Е Н И Е
## Над головой сущности создаём оповещение о том, что она получила эффект. (В БУДУЩЕМ ПОМЕНЯТЬ НА text_display)
execute anchored eyes positioned ^ ^ ^ run summon armor_stand ~ ~.5 ~ {CustomName:'[{"text":"Ожог!","color":"#eb5721"}]',Tags:["obl.announce.scorch","obl.announcement_marker"],CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b}
## Оповещение игроку на экран при наложении эффекта.
title @s times 0 30 10
title @s title {"text":"ОЖОГ!","italic":true,"color":"#eb5721"}
title @s subtitle {"text":"ПОТЕРЯ ЗДОРОВЬЯ!","italic":true,"color":"#c73916"}