# Raycast part 1

scoreboard players add yamatoattack oblivion 1

# Hit particle

particle flame ~ ~ ~ 0 0 0 0 1 force

# Raycast part 2

execute positioned ^ ^ ^0.4 unless score yamatoattack oblivion matches 30.. unless entity @e[type=#oblivion:aoe,distance=...1] run function oblivion:tech/raycast/cubeblade/effect

# Raycast end

execute unless entity @e[type=#oblivion:aoe,distance=...1] run scoreboard players set yamatoattack oblivion 0
execute if score yamatoattack oblivion matches 30.. run scoreboard players set yamatoattack oblivion 0