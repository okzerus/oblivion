scoreboard players add @s obl.parried_anvil.count 1

execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players set randomizer obl.rng.range 300
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players set randomizer obl.rng.range 500
execute if score @s obl.parried_anvil.count matches 10..49 run function obl:rng
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players remove randomizer obl.rng 150
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players remove randomizer obl.rng 250
execute if score @s obl.parried_anvil.count matches 10..49 store result entity @s Motion[0] double 0.0005 run scoreboard players get randomizer obl.rng

execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players set randomizer obl.rng.range 300
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players set randomizer obl.rng.range 500
execute if score @s obl.parried_anvil.count matches 10..49 run function obl:rng
execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players remove randomizer obl.rng 150
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players remove randomizer obl.rng 250
execute if score @s obl.parried_anvil.count matches 10..49 store result entity @s Motion[2] double 0.0005 run scoreboard players get randomizer obl.rng


execute if score @s obl.parried_anvil.count matches 10..29 run scoreboard players set randomizer obl.rng.range 300
execute if score @s obl.parried_anvil.count matches 30..49 run scoreboard players set randomizer obl.rng.range 500
execute if score @s obl.parried_anvil.count matches 10..49 run function obl:rng
execute if score @s obl.parried_anvil.count matches 10..49 run scoreboard players add randomizer obl.rng 200
execute if score @s obl.parried_anvil.count matches 10..49 store result entity @s Motion[1] double 0.002 run scoreboard players get randomizer obl.rng

execute if score @s obl.parried_anvil.count matches 50 run data merge entity @s {Motion:[0.0d,3.0d,0.0d]}