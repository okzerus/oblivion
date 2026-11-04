scoreboard players reset @s obl.in_combat
tag @s remove obl.in_combat
tellraw @s[tag=obl.debug] "Вышел из боя"

execute if entity @s[tag=obl.effect.shin] run function obl:effect/shin/end

execute unless entity @s[type=player] run scoreboard players reset @s obl.id.combat