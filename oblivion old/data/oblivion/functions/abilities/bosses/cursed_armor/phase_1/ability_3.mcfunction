execute if score @s abilities matches 510 run playsound minecraft:entity.evoker.prepare_spell master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 510 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_1/ability_3/story.1
execute if score @s abilities matches 510 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_1/ability_3/repeat.1

execute if score @s abilities matches 516 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit