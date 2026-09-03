###   M O V E M E N T
## First encounter
# First half
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 20 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 220 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 330 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 450 run function oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 490 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
# Second half
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 30 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 230 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 260 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back
execute if score @s[tag=obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 570 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1

## Second+ encounter
# First half
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 10 run function oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 40 run function oblivion:abilities/bosses/cursed_armor/dashing/closer_to_player
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 50 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 60 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 200 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 220 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 260 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 280 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 300 run function oblivion:abilities/bosses/cursed_armor/dashing/closer_to_player
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 310 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 320 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 330 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 430 run function oblivion:abilities/bosses/cursed_armor/dashing/up_back_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 470 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.first_half] abilities matches 490 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
# Second half
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 10 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 30 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 50 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 70 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 90 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 201 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 215 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 230 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 245 run function oblivion:abilities/bosses/cursed_armor/dashing/closer_to_player
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 255 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 265 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 280 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 295 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 310 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 325 run function oblivion:abilities/bosses/cursed_armor/dashing/random_lrbf
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 340 run function oblivion:abilities/bosses/cursed_armor/dashing/closer_to_player
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 350 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 360 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 375 run function oblivion:abilities/reflectable_attack_announce
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 385 anchored eyes facing entity @p feet run function oblivion:abilities/bosses/cursed_armor/sweeping/random
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 400 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 500 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1
execute if score @s[tag=!obl.first_appearance,tag=obl.cursed_armor.second_half] abilities matches 520 run function oblivion:abilities/bosses/cursed_armor/dashing/up_down.1


###   A B I L I T I E S
## First half
execute if score @s[tag=obl.cursed_armor.first_half] abilities matches 60..81 run function oblivion:abilities/bosses/cursed_armor/phase_2/first_half/ability_1
execute if score @s[tag=obl.cursed_armor.first_half] abilities matches 360..420 run function oblivion:abilities/bosses/cursed_armor/phase_2/first_half/ability_2
execute if score @s[tag=obl.cursed_armor.first_half] abilities matches 510..540 run function oblivion:abilities/bosses/cursed_armor/phase_2/first_half/ability_3
## Second half
execute if score @s[tag=obl.cursed_armor.second_half] abilities matches 110..151 run function oblivion:abilities/bosses/cursed_armor/phase_2/second_half/ability_1
execute if score @s[tag=obl.cursed_armor.second_half] abilities matches 420..480 run function oblivion:abilities/bosses/cursed_armor/phase_2/second_half/ability_2
execute if score @s[tag=obl.cursed_armor.second_half] abilities matches 540..570 run function oblivion:abilities/bosses/cursed_armor/phase_2/second_half/ability_3


###   E N D
execute if score @s abilities matches 600.. run scoreboard players set @s abilities 0