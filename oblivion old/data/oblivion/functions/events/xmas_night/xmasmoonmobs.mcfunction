# Randomizer

function oblivion:rng

execute if score randomizer obl.rng matches 1..35 run function oblivion:night/xmas/xmasmobs/mob1
execute if score randomizer obl.rng matches 36..70 run function oblivion:night/xmas/xmasmobs/mob2
execute if score randomizer obl.rng matches 71..78 run function oblivion:night/xmas/xmasmobs/mob3
execute if score randomizer obl.rng matches 79..86 run function oblivion:night/xmas/xmasmobs/mob4
execute if score randomizer obl.rng matches 87..94 run function oblivion:night/xmas/xmasmobs/mob5
execute unless score grinchalive oblivion matches 1 if score randomizer obl.rng matches 95..100 run scoreboard players set grinchspawn oblivion 1

function oblivion:night/xmas/spreadxmasmobs