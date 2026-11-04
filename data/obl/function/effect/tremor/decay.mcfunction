## Функция
scoreboard players remove @s obl.effect.tremor.count 1
scoreboard players operation @s obl.effect.tremor.decay = @s obl.effect.tremor.decay_max

scoreboard players operation #id.temp obl.id = @s obl.id
kill @e[type=text_display,tag=obl.announce.tremor,predicate=obl:matching_score]
data modify storage obl:temp x set value 1
scoreboard players operation #tremor_final obl = @s obl.effect.tremor.count
scoreboard players operation #tremor_final obl += #tremor_count obl
execute store result storage obl:temp y int 1 run scoreboard players get @s obl.effect.tremor.count
tag @s add obl.temp.negative
execute anchored eyes positioned ^ ^ ^ positioned ~ ~.5 ~ run function obl:effect/tremor/text_display with storage obl:temp
tag @s remove obl.temp.negative
scoreboard players operation @e[type=text_display,tag=obl.temp.set_id] obl.id = @s obl.id
tag @e[type=text_display] remove obl.temp.set_id

scoreboard players operation #debuff_strength obl = @s obl.effect.tremor.count
scoreboard players operation #debuff_strength obl /= #two obl.const
execute if score #debuff_strength obl matches ..0 run scoreboard players set #debuff_strength obl 1
execute store result storage obl:temp x double -0.01 run scoreboard players get #debuff_strength obl
function obl:effect/tremor/debuffs with storage obl:temp