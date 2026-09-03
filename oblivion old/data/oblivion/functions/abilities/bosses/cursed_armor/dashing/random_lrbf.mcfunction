function oblivion:rng

execute if score randomizer obl.rng matches 1..25 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/left
execute if score randomizer obl.rng matches 26..50 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/right
execute if score randomizer obl.rng matches 51..75 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/back
execute if score randomizer obl.rng matches 76..100 run function oblivion:abilities/bosses/cursed_armor/dashing/directions/forward