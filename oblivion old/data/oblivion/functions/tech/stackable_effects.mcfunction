###   S P E E D
execute if score @s obl.stackable.speed matches 100..199 run effect give @s speed 1 0 false
execute if score @s obl.stackable.speed matches 200..299 run effect give @s speed 1 1 false
execute if score @s obl.stackable.speed matches 300..399 run effect give @s speed 1 2 false
execute if score @s obl.stackable.speed matches 400..499 run effect give @s speed 1 3 false
execute if score @s obl.stackable.speed matches 500..599 run effect give @s speed 1 4 false
execute if score @s obl.stackable.speed matches 600..699 run effect give @s speed 1 5 false
execute if score @s obl.stackable.speed matches 700..799 run effect give @s speed 1 6 false
execute if score @s obl.stackable.speed matches 800..899 run effect give @s speed 1 7 false
execute if score @s obl.stackable.speed matches 900..999 run effect give @s speed 1 8 false
execute if score @s obl.stackable.speed matches 1000.. run effect give @s speed 1 9 false
execute if score @s obl.stackable.speed matches 1000.. run advancement grant @s only oblivion:advancements/effects/max_speed
execute if score @s[tag=obl.announced.max_speed] obl.stackable.speed matches ..999 run tag @s remove obl.announced.max_speed
execute if score @s[tag=!obl.announced.max_speed] obl.stackable.speed matches 1100.. run title @s[tag=!obl.announced.max_speed] actionbar {"text":"Максимальный уровень эффекта Скорость не может быть превышен (10)","color":"red"}
execute if score @s[tag=!obl.announced.max_speed] obl.stackable.speed matches 1100.. run tag @s add obl.announced.max_speed
###   S T R E N G T H
execute if score @s obl.stackable.strength matches 100..199 run effect give @s strength 1 0 false
execute if score @s obl.stackable.strength matches 200..299 run effect give @s strength 1 1 false
execute if score @s obl.stackable.strength matches 300..399 run effect give @s strength 1 2 false
execute if score @s obl.stackable.strength matches 400..499 run effect give @s strength 1 3 false
execute if score @s obl.stackable.strength matches 500..599 run effect give @s strength 1 4 false
execute if score @s obl.stackable.strength matches 600..699 run effect give @s strength 1 5 false
execute if score @s obl.stackable.strength matches 700..799 run effect give @s strength 1 6 false
execute if score @s obl.stackable.strength matches 800..899 run effect give @s strength 1 7 false
execute if score @s obl.stackable.strength matches 900..999 run effect give @s strength 1 8 false
execute if score @s obl.stackable.strength matches 1000..1099 run effect give @s strength 1 9 false
execute if score @s obl.stackable.strength matches 1100..1199 run effect give @s strength 1 10 false
execute if score @s obl.stackable.strength matches 1200..1299 run effect give @s strength 1 11 false
execute if score @s obl.stackable.strength matches 1300..1399 run effect give @s strength 1 12 false
execute if score @s obl.stackable.strength matches 1400..1499 run effect give @s strength 1 13 false
execute if score @s obl.stackable.strength matches 1500..1599 run effect give @s strength 1 14 false
execute if score @s obl.stackable.strength matches 1600..1699 run effect give @s strength 1 15 false
execute if score @s obl.stackable.strength matches 1700..1799 run effect give @s strength 1 16 false
execute if score @s obl.stackable.strength matches 1800..1899 run effect give @s strength 1 17 false
execute if score @s obl.stackable.strength matches 1900..1999 run effect give @s strength 1 18 false
execute if score @s obl.stackable.strength matches 2000.. run effect give @s strength 1 19 false
execute if score @s obl.stackable.strength matches 2000.. run advancement grant @s only oblivion:advancements/effects/max_strength
execute if score @s[tag=obl.announced.max_strength] obl.stackable.strength matches ..2099 run tag @s remove obl.announced.max_strength
execute if score @s[tag=!obl.announced.max_strength] obl.stackable.strength matches 2100.. run title @s[tag=!obl.announced.max_strength] actionbar {"text":"Максимальный уровень эффекта Сила не может быть превышен (20)","color":"red"}
execute if score @s[tag=!obl.announced.max_strength] obl.stackable.strength matches 2100.. run tag @s add obl.announced.max_strength
###   H A S T E
execute if score @s obl.stackable.haste matches 100..199 run effect give @s haste 1 0 false
execute if score @s obl.stackable.haste matches 200..299 run effect give @s haste 1 1 false
execute if score @s obl.stackable.haste matches 300..399 run effect give @s haste 1 2 false
execute if score @s obl.stackable.haste matches 400..499 run effect give @s haste 1 3 false
execute if score @s obl.stackable.haste matches 500.. run effect give @s haste 1 4 false
execute if score @s obl.stackable.haste matches 500.. run advancement grant @s only oblivion:advancements/effects/max_haste
execute if score @s[tag=obl.announced.max_haste] obl.stackable.haste matches ..599 run tag @s remove obl.announced.max_haste
execute if score @s[tag=!obl.announced.max_haste] obl.stackable.haste matches 600.. run title @s[tag=!obl.announced.max_haste] actionbar {"text":"Максимальный уровень эффекта Спешка не может быть превышен (5)","color":"red"}
execute if score @s[tag=!obl.announced.max_haste] obl.stackable.haste matches 600.. run tag @s add obl.announced.max_haste
###   J U M P   B O O S T
execute if score @s obl.stackable.jump_boost matches 100..199 run effect give @s jump_boost 1 0 false
execute if score @s obl.stackable.jump_boost matches 200..299 run effect give @s jump_boost 1 1 false
execute if score @s obl.stackable.jump_boost matches 300..399 run effect give @s jump_boost 1 2 false
execute if score @s obl.stackable.jump_boost matches 400..499 run effect give @s jump_boost 1 3 false
execute if score @s obl.stackable.jump_boost matches 500.. run effect give @s jump_boost 1 4 false
execute if score @s obl.stackable.jump_boost matches 500.. run advancement grant @s only oblivion:advancements/effects/max_jump_boost
execute if score @s[tag=obl.announced.max_jump_boost] obl.stackable.jump_boost matches ..599 run tag @s remove obl.announced.max_jump_boost
execute if score @s[tag=!obl.announced.max_jump_boost] obl.stackable.jump_boost matches 600.. run title @s[tag=!obl.announced.max_jump_boost] actionbar {"text":"Максимальный уровень эффекта Прыгучесть не может быть превышен (5)","color":"red"}
execute if score @s[tag=!obl.announced.max_jump_boost] obl.stackable.jump_boost matches 600.. run tag @s add obl.announced.max_jump_boost
###   R E S I S T A N C E
execute if score @s obl.stackable.resistance matches 100..199 run effect give @s resistance 1 0 false
execute if score @s obl.stackable.resistance matches 200..299 run effect give @s resistance 1 1 false
execute if score @s obl.stackable.resistance matches 300..399 run effect give @s resistance 1 2 false
execute if score @s obl.stackable.resistance matches 400.. run effect give @s resistance 1 3 false
execute if score @s obl.stackable.resistance matches 400.. run advancement grant @s only oblivion:advancements/effects/max_resistance
execute if score @s[tag=obl.announced.max_resistance] obl.stackable.resistance matches ..499 run tag @s remove obl.announced.max_resistance
execute if score @s[tag=!obl.announced.max_resistance] obl.stackable.resistance matches 500.. run title @s[tag=!obl.announced.max_resistance] actionbar {"text":"Максимальный уровень эффекта Сопротивление не может быть превышен (4)","color":"red"}
execute if score @s[tag=!obl.announced.max_resistance] obl.stackable.resistance matches 500.. run tag @s add obl.announced.max_resistance
###   H E A L T H   B O O S T
## I fucking, fucking oh god fucking for the fuck in the fucking fuck hate minecraft for resetting additional hearts on each /effect give health_boost
execute if entity @s[tag=obl.health_boost.modified] if score @s obl.stackable.health_boost matches ..99 run function oblivion:tech/health_boost/clear

execute if entity @s[tag=!obl.health_boost.lvl_1,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 100..199 run function oblivion:tech/health_boost/1
execute if entity @s[tag=!obl.health_boost.lvl_2,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 200..299 run function oblivion:tech/health_boost/2
execute if entity @s[tag=!obl.health_boost.lvl_3,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 300..399 run function oblivion:tech/health_boost/3
execute if entity @s[tag=!obl.health_boost.lvl_4,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 400..499 run function oblivion:tech/health_boost/4
execute if entity @s[tag=!obl.health_boost.lvl_5,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 500..599 run function oblivion:tech/health_boost/5
execute if entity @s[tag=!obl.health_boost.lvl_6,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 600..699 run function oblivion:tech/health_boost/6
execute if entity @s[tag=!obl.health_boost.lvl_7,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 700..799 run function oblivion:tech/health_boost/7
execute if entity @s[tag=!obl.health_boost.lvl_8,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 800..899 run function oblivion:tech/health_boost/8
execute if entity @s[tag=!obl.health_boost.lvl_9,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 900..999 run function oblivion:tech/health_boost/9
execute if entity @s[tag=!obl.health_boost.lvl_10,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1000..1099 run function oblivion:tech/health_boost/10
execute if entity @s[tag=!obl.health_boost.lvl_11,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1100..1199 run function oblivion:tech/health_boost/11
execute if entity @s[tag=!obl.health_boost.lvl_12,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1200..1299 run function oblivion:tech/health_boost/12
execute if entity @s[tag=!obl.health_boost.lvl_13,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1300..1399 run function oblivion:tech/health_boost/13
execute if entity @s[tag=!obl.health_boost.lvl_14,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1400..1499 run function oblivion:tech/health_boost/14
execute if entity @s[tag=!obl.health_boost.lvl_15,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1500..1599 run function oblivion:tech/health_boost/15
execute if entity @s[tag=!obl.health_boost.lvl_16,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1600..1699 run function oblivion:tech/health_boost/16
execute if entity @s[tag=!obl.health_boost.lvl_17,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1700..1799 run function oblivion:tech/health_boost/17
execute if entity @s[tag=!obl.health_boost.lvl_18,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1800..1899 run function oblivion:tech/health_boost/18
execute if entity @s[tag=!obl.health_boost.lvl_19,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 1900..1999 run function oblivion:tech/health_boost/19
execute if entity @s[tag=!obl.health_boost.lvl_20,tag=!obl.health_boost.modified] if score @s obl.stackable.health_boost matches 2000.. run function oblivion:tech/health_boost/20

execute if entity @s[tag=obl.health_boost.lvl_1,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 100..199 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_2,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 200..299 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_3,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 300..399 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_4,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 400..499 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_5,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 500..599 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_6,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 600..699 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_7,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 700..799 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_8,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 800..899 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_9,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 900..999 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_10,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1000..1099 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_11,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1100..1199 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_12,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1200..1299 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_13,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1300..1399 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_14,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1400..1499 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_15,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1500..1599 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_16,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1600..1699 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_17,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1700..1799 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_18,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1800..1899 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_19,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 1900..1999 run function oblivion:tech/health_boost/clear
execute if entity @s[tag=obl.health_boost.lvl_20,tag=obl.health_boost.modified] unless score @s obl.stackable.health_boost matches 2000.. run function oblivion:tech/health_boost/clear

execute if score @s[tag=obl.announced.max_health_boost] obl.stackable.health_boost matches ..2099 run tag @s remove obl.announced.max_health_boost
execute if score @s[tag=!obl.announced.max_health_boost] obl.stackable.health_boost matches 2100.. run title @s[tag=!obl.announced.max_health_boost] actionbar {"text":"Максимальный уровень эффекта Прилив здоровья не может быть превышен (20)","color":"red"}
execute if score @s[tag=!obl.announced.max_health_boost] obl.stackable.health_boost matches 2100.. run tag @s add obl.announced.max_health_boost
###   U N L U C K  /  L U C K
execute if score @s[tag=obl.announced.max_unluck] obl.stackable.luck matches -799.. run tag @s remove obl.announced.max_unluck
execute if score @s[tag=!obl.announced.max_unluck] obl.stackable.luck matches ..-800 run title @s[tag=!obl.announced.max_unluck] actionbar {"text":"Максимальный уровень эффекта Неудача не может быть превышен (7)","color":"red"}
execute if score @s[tag=!obl.announced.max_unluck] obl.stackable.luck matches ..-800 run tag @s add obl.announced.max_unluck
execute if score @s obl.stackable.luck matches ..-700 run advancement grant @s only oblivion:advancements/effects/max_unluck
execute if score @s obl.stackable.luck matches ..-700 run effect give @s unluck 1 6 false
execute if score @s obl.stackable.luck matches -699..-600 run effect give @s unluck 1 5 false
execute if score @s obl.stackable.luck matches -599..-500 run effect give @s unluck 1 4 false
execute if score @s obl.stackable.luck matches -499..-400 run effect give @s unluck 1 3 false
execute if score @s obl.stackable.luck matches -399..-300 run effect give @s unluck 1 2 false
execute if score @s obl.stackable.luck matches -299..-200 run effect give @s unluck 1 1 false
execute if score @s obl.stackable.luck matches -199..-100 run effect give @s unluck 1 0 false

execute if score @s obl.stackable.luck matches 100..199 run effect give @s luck 1 0 false
execute if score @s obl.stackable.luck matches 200..299 run effect give @s luck 1 1 false
execute if score @s obl.stackable.luck matches 300..399 run effect give @s luck 1 2 false
execute if score @s obl.stackable.luck matches 400..499 run effect give @s luck 1 3 false
execute if score @s obl.stackable.luck matches 500..599 run effect give @s luck 1 4 false
execute if score @s obl.stackable.luck matches 600..699 run effect give @s luck 1 5 false
execute if score @s obl.stackable.luck matches 700.. run effect give @s luck 1 6 false
execute if score @s obl.stackable.luck matches 700.. run advancement grant @s only oblivion:advancements/effects/max_luck
execute if score @s[tag=obl.announced.max_luck] obl.stackable.luck matches ..799 run tag @s remove obl.announced.max_luck
execute if score @s[tag=!obl.announced.max_luck] obl.stackable.luck matches 800.. run title @s[tag=!obl.announced.max_luck] actionbar {"text":"Максимальный уровень эффекта Удача не может быть превышен (7)","color":"red"}
execute if score @s[tag=!obl.announced.max_luck] obl.stackable.luck matches 800.. run tag @s add obl.announced.max_luck