execute unless score @s obl.cd.emp.elixir matches 1.. run scoreboard players set @s obl.used.emp.elixir 1
execute unless score @s obl.cd.emp.elixir matches 1.. run tellraw @s [{"text":"[Загадочный эликсир - Усилитель откатывается!]","color":"dark_purple"},{"text":" (12:00)","color":"red"}]

scoreboard players add @s obl.cd.emp.elixir 1

execute if score @s obl.cd.emp.elixir matches 14400.. run function oblivion:items/empowerers/elixir/ready