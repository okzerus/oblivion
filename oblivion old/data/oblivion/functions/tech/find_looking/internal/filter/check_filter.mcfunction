scoreboard players operation $selected obl.find_look.temp = @s obl.find_look.temp
scoreboard players operation $selected obl.find_look.temp /= $filter obl.find_look.temp
scoreboard players operation $selected obl.find_look.temp %= 2 obl.find_look.const
tag @s remove obl.find_looking.in_filter
execute if score $selected obl.find_look.temp matches 1 run tag @s add obl.find_looking.in_filter
