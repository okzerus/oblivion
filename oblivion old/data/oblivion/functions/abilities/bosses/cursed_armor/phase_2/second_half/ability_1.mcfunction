execute if score @s abilities matches 110.. run particle dust 0.2 1 0.2 1.5 ~ ~1.5 ~ 0.4 0.8 0.4 0 30 force
execute if score @s abilities matches 110.. run tp @s ~ ~ ~ facing entity @p[tag=!obl.death_boss.cd] eyes
execute if score @s abilities matches 110 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
execute if score @s abilities matches 110 run tag @s add obl.armorshield
execute if score @s abilities matches 110 run summon marker ~ ~ ~ {Tags:["obl.cursed_shield"]}
execute if score @s abilities matches 110 run data merge entity @s {NoAI:1b}
execute if score @s abilities matches 110 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_2/second_half/ability_1/story.1
execute if score @s abilities matches 110 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_2/second_half/ability_1/repeat.1

execute if score @s abilities matches 110 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.1"]}
execute if score @s abilities matches 110 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.2"]}
execute if score @s abilities matches 110 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.3"]}
execute if score @s abilities matches 110 run tp @e[type=marker,tag=obl.beam.prepare_curses] @s
execute if score @s abilities matches 110 as @e[type=marker,tag=obl.beam.prepare_curses.1] at @s run tp @s ~ ~.4 ~ ~ 0
execute if score @s abilities matches 110 as @e[type=marker,tag=obl.beam.prepare_curses.2] at @s run tp @s ~ ~.4 ~ ~20 0
execute if score @s abilities matches 110 as @e[type=marker,tag=obl.beam.prepare_curses.3] at @s run tp @s ~ ~.4 ~ ~-20 0
execute if score @s abilities matches 110 as @e[type=marker,tag=obl.beam.prepare_curses] at @s anchored eyes run function oblivion:tech/projectiles/shoot/cursed_spike
execute if score @s abilities matches 110 run kill @e[type=marker,tag=obl.beam.prepare_curses]

execute if score @s abilities matches 130 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.1"]}
execute if score @s abilities matches 130 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.2"]}
execute if score @s abilities matches 130 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.3"]}
execute if score @s abilities matches 130 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.4"]}
execute if score @s abilities matches 130 run tp @e[type=marker,tag=obl.beam.prepare_curses] @s
execute if score @s abilities matches 130 as @e[type=marker,tag=obl.beam.prepare_curses.1] at @s run tp @s ~ ~.4 ~ ~10 0
execute if score @s abilities matches 130 as @e[type=marker,tag=obl.beam.prepare_curses.2] at @s run tp @s ~ ~.4 ~ ~-10 0
execute if score @s abilities matches 130 as @e[type=marker,tag=obl.beam.prepare_curses.3] at @s run tp @s ~ ~.4 ~ ~30 0
execute if score @s abilities matches 130 as @e[type=marker,tag=obl.beam.prepare_curses.4] at @s run tp @s ~ ~.4 ~ ~-30 0
execute if score @s abilities matches 130 as @e[type=marker,tag=obl.beam.prepare_curses] at @s anchored eyes run function oblivion:tech/projectiles/shoot/cursed_spike
execute if score @s abilities matches 130 run kill @e[type=marker,tag=obl.beam.prepare_curses]

execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.1"]}
execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.2"]}
execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.3"]}
execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.4"]}
execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.5"]}
execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.6"]}
execute if score @s abilities matches 150 run summon minecraft:marker ~ ~ ~ {Tags:["obl.instant_beam","obl.beam.prepare_curses","obl.beam.prepare_curses.7"]}
execute if score @s abilities matches 150 run tp @e[type=marker,tag=obl.beam.prepare_curses] @s
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.1] at @s run tp @s ~ ~.4 ~ ~ 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.2] at @s run tp @s ~ ~.4 ~ ~15 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.3] at @s run tp @s ~ ~.4 ~ ~-15 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.4] at @s run tp @s ~ ~.4 ~ ~30 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.5] at @s run tp @s ~ ~.4 ~ ~-30 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.6] at @s run tp @s ~ ~.4 ~ ~45 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses.7] at @s run tp @s ~ ~.4 ~ ~-45 0
execute if score @s abilities matches 150 as @e[type=marker,tag=obl.beam.prepare_curses] at @s anchored eyes run function oblivion:tech/projectiles/shoot/cursed_spike
execute if score @s abilities matches 150 run kill @e[type=marker,tag=obl.beam.prepare_curses]

execute if score @s abilities matches 150 run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 150 run tag @s remove obl.armorshield
execute if score @s abilities matches 150 run kill @e[type=marker,tag=obl.cursed_shield,limit=1,sort=nearest]
execute if score @s abilities matches 150 run data merge entity @s {NoAI:0b}