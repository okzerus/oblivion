title @s actionbar ["",{"text":"Gl", "color":"#FF7A1A"},{"text":"ut", "color":"#F86A16"},{"text":"to", "color":"#F05912"},{"text":"ny", "color":"#E8480F"},{"text":" //", "color":"#DE380C"},{"text":" Co", "color":"#D22809"},{"text":"mb", "color":"#C31806"},{"text":"o:", "color":"#B00000"},{"text":" "},{"score":{"name":"@s","objective":"obl.weapon.gluttony.combo"},"color":"#FFC107"}]
execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
#execute if score @s obl.weapon.gluttony.combo matches 30.. run effect give @s minecraft:speed 1 0 true
scoreboard players add @s obl.weapon.gluttony.fangs 1 
tag @s add obl.temp
execute if score @s obl.weapon.gluttony.fangs matches 20.. at @e[type=#obl:all_mobs,distance=..5,limit=1,sort=random,tag=!obl.temp] run function obl:item/weapon/gluttony/spawn_fangs
tag @s remove obl.temp 