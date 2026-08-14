# From tick

###   H E A L T H
# Update entity's HP from NBT
execute store result score @s obl.health run data get entity @s Health


###   E F F E C T S
# Scorch
execute if entity @s[tag=obl.effect.debuff.scorch] run function obl:tech/effect/debuff/scorch/tick


# Announcement
execute if entity @s[type=armor_stand,tag=obl.announcement_marker] run function obl:tech/tick.announcement_marker



###   C L E A N U P
tag @s remove obl.temp.took_damage