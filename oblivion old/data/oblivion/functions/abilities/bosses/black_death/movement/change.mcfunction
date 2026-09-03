tag @s remove obl.black_death.speed.1
tag @s remove obl.black_death.speed.2
tag @s remove obl.black_death.speed.3

function oblivion:rng
execute if score randomizer obl.rng matches ..79 run function oblivion:abilities/bosses/black_death/movement/facing_player
execute if score randomizer obl.rng matches 80.. run function oblivion:abilities/bosses/black_death/movement/random_direction

scoreboard players set @s obl.black_death.movement.cd 60