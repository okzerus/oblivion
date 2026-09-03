function oblivion:rng

execute if score randomizer obl.rng matches 1..33 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/left
execute if score randomizer obl.rng matches 34..66 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/right
execute if score randomizer obl.rng matches 67..100 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back