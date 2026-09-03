scoreboard players set @s obl.mob.ability_cd 1
data merge entity @s {GotFish:0b}
execute if predicate oblivion:chance/20 unless score @s obl.alpha_dolphin.dropped_pearl matches 1.. run function oblivion:abilities/mobs/alpha_dolphin/pearl