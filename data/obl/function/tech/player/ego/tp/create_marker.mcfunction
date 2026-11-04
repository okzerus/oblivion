# Создаём якорь и привязываем его к игроку
summon marker 0 42 ~ {Tags:["obl.ego_anchor","obl.ego","obl.temp.set_id"]}
scoreboard players operation @n[type=marker,tag=obl.temp.set_id] obl.id = @s obl.id
tag @e[type=marker] remove obl.temp.set_id