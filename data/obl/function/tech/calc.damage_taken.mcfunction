# Из tech/player/adv/on.hit

# Просчитывает кол-во полученного урона, сохраняя в obl.damage_taken
scoreboard players operation @s obl.damage_taken = @s obl.health_old
scoreboard players operation @s obl.damage_taken -= @s obl.health

# Оставляет временный тег, означающий что цель получила урон
tag @s add obl.temp.took_damage