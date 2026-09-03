execute if score @s abilities matches 540 run playsound minecraft:entity.evoker.prepare_spell master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 540 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_2/second_half/ability_3/story.1
execute if score @s abilities matches 540 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_2/second_half/ability_3/repeat.1

execute if score @s abilities matches 546 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit
execute if score @s abilities matches 552 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit
execute if score @s abilities matches 558 run function oblivion:abilities/bosses/cursed_armor/random_spawn_spirit