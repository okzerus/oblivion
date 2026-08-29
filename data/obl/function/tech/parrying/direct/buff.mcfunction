tag @s add obl.empowered.parry
tag @s add obl.empowered.parry.direct
execute unless score @s obl.parry.direct_count matches 4.. run scoreboard players add @s obl.stackable.strength 100
execute unless score @s obl.parry.direct_count matches 4.. run scoreboard players add @s obl.stackable.haste 100

scoreboard players add @s obl.parry.direct_count 1

scoreboard players set @s obl.parry.empower_tick 45