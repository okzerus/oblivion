# Из tech/player/adv/on.hit

# Вычисляет количество полученного урона, сохраняет в obl.damage_taken
scoreboard players operation @s obl.damage_taken = @s obl.health_old
scoreboard players operation @s obl.damage_taken -= @s obl.health

# Оставляет временный тэг, указывающий на то, что цель получила урон
tag @s add obl.temp.took_damage