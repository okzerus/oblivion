function oblivion:rng

execute if score randomizer obl.rng matches 1..35 run function oblivion:abilities/bosses/cursed_armor/sweeping/r.up_to_l.down
execute if score randomizer obl.rng matches 36..70 run function oblivion:abilities/bosses/cursed_armor/sweeping/l.up_to_r.down
execute if score randomizer obl.rng matches 71..85 run function oblivion:abilities/bosses/cursed_armor/sweeping/forward
execute if score randomizer obl.rng matches 86..100 run function oblivion:abilities/bosses/cursed_armor/sweeping/up_to_down