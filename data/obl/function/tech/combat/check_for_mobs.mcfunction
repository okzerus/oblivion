# эта функция выполняется только на игроке

tag @s add obl.temp.this
scoreboard players operation #id.temp obl.id.combat = @s obl.id
execute as @e[type=#obl:all_mobs,predicate=obl:matching_score.combat] on target run tag @p[tag=obl.temp.this] add obl.temp.tick_cancel
tag @s remove obl.temp.this