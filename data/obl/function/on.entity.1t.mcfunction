# Из tick.mcfunction

###   З Д О Р О В Ь Е
# Обновить здоровье сущности из NBT
execute store result score @s obl.health run data get entity @s Health


###   Э Ф Ф Е К Т Ы
# Ожог
execute if entity @s[tag=obl.effect.debuff.scorch] run function obl:tech/effect/debuff/scorch/tick


# Объявление
execute if entity @s[type=armor_stand,tag=obl.announcement_marker] run function obl:tech/tick.announcement_marker


scoreboard players add @s[type=block_display,tag=obl.crack_of_dawn.slash.vfx] obl 1
execute as @s[type=block_display,tag=obl.crack_of_dawn.slash.vfx, scores={obl=10..}] run kill @s



###   О Ч И С Т К А
tag @s remove obl.temp.took_damage