# From tick

###   H E A L T H
# Store old HP for the next tick comparison
scoreboard players operation @s obl.health_old = @s obl.health

# Update entity's HP from NBT
execute store result score @s obl.health run data get entity @s Health

# Check if entity took damage; calculate amount
execute if score @s obl.health < @s obl.health_old run function obl:tech/calc.damage_taken
execute if score @s obl.health = @s obl.health_old run scoreboard players set @s obl.damage_taken 0


###   E F F E C T S
# Scorch
execute if entity @s[tag=obl.effect.debuff.scorch] run function obl:tech/effect/debuff/scorch



###   C L E A N U P
tag @s remove obl.temp.took_damage