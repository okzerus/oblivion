title @s times 20 100 20
title @s title ["",{"text":"День недели: ","color":"green"},{"score":{"name":"count.week_day","objective":"oblivion"},"color":"light_purple"}]
execute if score count.week_day oblivion matches 1 run title @s subtitle {"text":"Понедельник","color":"green"}
execute if score count.week_day oblivion matches 2 run title @s subtitle {"text":"Вторник","color":"green"}
execute if score count.week_day oblivion matches 3 run title @s subtitle {"text":"Среда","color":"green"}
execute if score count.week_day oblivion matches 4 run title @s subtitle {"text":"Четверг","color":"green"}
execute if score count.week_day oblivion matches 5 run title @s subtitle {"text":"Пятница","color":"green"}
execute if score count.week_day oblivion matches 6 run title @s subtitle {"text":"Суббота","color":"green"}
execute if score count.week_day oblivion matches 7 run title @s subtitle {"text":"Воскресенье","color":"green"}