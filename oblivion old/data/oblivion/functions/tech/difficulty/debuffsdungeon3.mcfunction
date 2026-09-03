title @s actionbar ["",{"text":"Ваш уровень недостаточно высокий, чтобы проходить этот данж! ","italic":true,"color":"dark_red"},{"text":"Требуемый уровень: 3","italic":true,"color":"gold"}]
effect give @s blindness 5 9 true
effect give @s weakness 5 9 true
effect give @s mining_fatigue 5 9 true
particle minecraft:angry_villager ~ ~1 ~ 3 3 3 0 100 force @s
scoreboard players add @s obl.diffwither 1
execute if score @s obl.diffwither matches 1.. run effect give @s instant_damage 1 0 true
execute if score @s obl.diffwither matches 1.. run scoreboard players set @s obl.diffwither 0