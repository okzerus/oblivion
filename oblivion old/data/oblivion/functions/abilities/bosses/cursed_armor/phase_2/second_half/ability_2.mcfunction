execute if score @s abilities matches 420 run playsound minecraft:entity.blaze.ambient master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 420 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 420 run data merge entity @s {NoAI:1b,Invulnerable:0b}
execute if score @s abilities matches 420 run tag @s remove obl.invulnerable
execute if score @s abilities matches 420 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_2/second_half/ability_2/story.1
execute if score @s abilities matches 420 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_2/second_half/ability_2/repeat.1
execute if score @s abilities matches 420.. anchored eyes run particle dust 0.2 1 0.2 1.5 ^ ^ ^.45 0.2 0.2 0.2 0 5 force
execute if score @s abilities matches 420.. anchored eyes run particle electric_spark ^ ^ ^.45 0.3 0.3 0.3 0 10 force
execute if score @s abilities matches 420.. anchored eyes run tp @s ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] eyes

execute if score @s abilities matches 340 run function oblivion:tech/projectiles/shoot/cursed
execute if score @s abilities matches 455 run function oblivion:tech/projectiles/shoot/cursed
execute if score @s abilities matches 470 run function oblivion:tech/projectiles/shoot/cursed
execute if score @s abilities matches 480 run data merge entity @s {NoAI:0b,Invulnerable:0b}