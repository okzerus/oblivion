###   M O V E M E N T
## First encounter
execute if score @s[tag=obl.first_appearance] abilities matches 20 run function oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s[tag=obl.first_appearance] abilities matches 140 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=obl.first_appearance] abilities matches 220 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrb
execute if score @s[tag=obl.first_appearance] abilities matches 330 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrb
execute if score @s[tag=obl.first_appearance] abilities matches 470 run function oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
## Second+ encounter
execute if score @s[tag=!obl.first_appearance] abilities matches 10 run function oblivion:abilities/bosses/cursed_armor/dashing/closer_to_player
execute if score @s[tag=!obl.first_appearance] abilities matches 20 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance] abilities matches 30 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance] abilities matches 100 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance] abilities matches 140 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance] abilities matches 200 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance] abilities matches 250 run function oblivion:abilities/bosses/cursed_armor/dashing/closer_to_player
execute if score @s[tag=!obl.first_appearance] abilities matches 265 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance] abilities matches 275 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance] abilities matches 295 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance] abilities matches 305 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance] abilities matches 330 run function oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s[tag=!obl.first_appearance] abilities matches 450 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrb
execute if score @s[tag=!obl.first_appearance] abilities matches 470 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrb
execute if score @s[tag=!obl.first_appearance] abilities matches 490 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrb
execute if score @s[tag=!obl.first_appearance] abilities matches 470 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1


###   A B I L I T I E S
execute if score @s abilities matches 60..180 run function oblivion:abilities/bosses/cursed_armor/phase_1/ability_1
execute if score @s abilities matches 360..420 run function oblivion:abilities/bosses/cursed_armor/phase_1/ability_2
execute if score @s abilities matches 510..540 run function oblivion:abilities/bosses/cursed_armor/phase_1/ability_3


###   E N D
execute if score @s abilities matches 600.. run scoreboard players set @s abilities 0