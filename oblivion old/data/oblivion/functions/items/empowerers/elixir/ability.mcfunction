execute unless score @s obl.used.emp.elixir matches 1 run scoreboard players add @s obl.process.emp.elixir 1

execute if score @s obl.process.emp.elixir matches 1 run playsound minecraft:entity.villager.work_cleric hostile @a ~ ~ ~ 1 1.5
execute if score @s obl.process.emp.elixir matches 1 run playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.elixir matches 1 run particle minecraft:witch ~ ~.5 ~ 0.3 0.6 0.3 0 10 normal
execute if score @s obl.process.emp.elixir matches 1 run effect give @s slowness 1 2 true

execute if score @s obl.process.emp.elixir matches 15 run playsound minecraft:item.totem.use hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.elixir matches 15 run playsound minecraft:block.beacon.power_select hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.elixir matches 15 run playsound minecraft:block.beacon.deactivate hostile @a ~ ~ ~ 1 1.6
execute if score @s obl.process.emp.elixir matches 15 run particle minecraft:witch ~ ~.5 ~ 0.3 0.6 0.3 0.2 30 normal
execute if score @s obl.process.emp.elixir matches 15 as @e[type=minecraft:zombie_villager,distance=..15] run data merge entity @s {ConversionTime:1}
execute if score @s obl.process.emp.elixir matches 15 as @e[type=minecraft:zombie_villager,distance=..15] run data modify entity @s ConversionPlayer set from storage oblivion:player Player.UUID
execute if score @s obl.process.emp.elixir matches 15 run effect clear @s slowness

execute if score @s obl.process.emp.elixir matches 15.. run function oblivion:items/empowerers/elixir/cd