###   F A K E   B O S S B A R   F U N C T I O N
## BIG THANKS TO @enigmatek FOR HELPING OUT WITH THIS MECHANIC. Minecraft Commands https://discord.gg/QAFXFtZ https://discord.com/channels/154777837382008833/1142376024898797589
execute unless score obl.disable_fake_bossbar oblivion matches 1 store result score @s obl.health run data get entity @s Health
execute unless score obl.disable_fake_bossbar oblivion matches 1 unless score @s obl.health matches 1024 run function oblivion:abilities/bosses/damaged
execute unless score obl.disable_fake_bossbar oblivion matches 1 run scoreboard players set @s obl.real_health 1024
execute unless score obl.disable_fake_bossbar oblivion matches 1 run scoreboard players operation @s obl.real_health -= @s obl.health
execute unless score obl.disable_fake_bossbar oblivion matches 1 run scoreboard players operation @s obl.real_health < obl.max_damage oblivion
execute unless score obl.disable_fake_bossbar oblivion matches 1 run scoreboard players operation @s obl.fake_health -= @s obl.real_health
execute unless score obl.disable_fake_bossbar oblivion matches 1 store result bossbar oblivion:boss_health value run scoreboard players get @s obl.fake_health
execute unless score obl.disable_fake_bossbar oblivion matches 1 run effect give @s[type=#oblivion:undead] instant_damage 1 40 true
execute unless score obl.disable_fake_bossbar oblivion matches 1 run effect give @s[type=!#oblivion:undead] instant_health 1 40 true

###   C U R S E D   A R M O R
execute if entity @s[tag=obl.boss.cursed_armor] run function oblivion:abilities/bosses/cursed_armor

###   T H E   B L A C K   D E A T H
execute if entity @s[tag=obl.boss.black_death] run function oblivion:abilities/bosses/black_death