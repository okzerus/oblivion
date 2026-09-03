scoreboard players add @s obl.phase_transition 1
execute as @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] at @s anchored eyes rotated ~ 0 run tp @s ^ ^ ^.007
execute as @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] at @s run particle minecraft:squid_ink ~ ~ ~ 0 0 0 0.02 1 normal
execute at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] run function oblivion:abilities/bosses/black_death/random_tentacle
execute if score @s obl.phase_transition matches 350..449 as @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] at @s run particle minecraft:dust 0 0 0 0.6 ~ ~ ~ 0.3 0.3 0.3 0.05 3 normal
execute if score @s obl.phase_transition matches 500.. as @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] at @s run particle minecraft:dust 0 0 0 0.9 ~ ~ ~ 0.5 0.5 0.5 0.05 7 normal
execute if score @s obl.phase_transition matches 1 unless entity @a[distance=..50,tag=obl.beaten.black_death] run tag @s add obl.first_appearance
execute if score @s obl.phase_transition matches 1 run playsound minecraft:entity.wither.spawn hostile @a ~ ~ ~ 0.7 0.6

execute if score @s obl.phase_transition matches 40 run fill ~-4 ~-4 ~-4 ~4 ~2 ~4 air replace lava
execute if score @s obl.phase_transition matches 40 run particle minecraft:flame ~ ~ ~ 0 0 0 0.2 100 normal
execute if score @s obl.phase_transition matches 40 run playsound minecraft:block.lava.extinguish hostile @a ~ ~ ~ 0.7 0.6

# Pre-Load the music to get it in timing
execute if score @s obl.phase_transition matches 60 as @a[distance=..50] at @s run playsound oblivion:bosses.black_death voice @s
execute if score @s obl.phase_transition matches 65 as @a[distance=..50] at @s run stopsound @s voice
execute if score @s obl.phase_transition matches 65 as @a[distance=..50] at @s run playsound oblivion:bosses.black_death voice @s
execute if score @s obl.phase_transition matches 70 as @a[distance=..50] at @s run stopsound @s voice
execute if score @s obl.phase_transition matches 70 as @a[distance=..50] at @s run playsound oblivion:bosses.black_death voice @s
execute if score @s obl.phase_transition matches 75 as @a[distance=..50] at @s run stopsound @s voice
execute if score @s obl.phase_transition matches 75 as @a[distance=..50] at @s run playsound oblivion:bosses.black_death voice @s
execute if score @s obl.phase_transition matches 80 as @a[distance=..50] at @s run stopsound @s voice
execute if score @s obl.phase_transition matches 80 as @a[distance=..50] at @s run playsound oblivion:bosses.black_death voice @s
execute if score @s obl.phase_transition matches 85 as @a[distance=..50] at @s run stopsound @s voice

execute if score @s obl.phase_transition matches 40 run playsound oblivion:misc.laugh.1 hostile @a ~ ~ ~ 2 0.6
execute if score @s obl.phase_transition matches 80 run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=1,lit=false] replace minecraft:black_candle[candles=1,lit=true]
execute if score @s obl.phase_transition matches 80 run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=2,lit=false] replace minecraft:black_candle[candles=2,lit=true]
execute if score @s obl.phase_transition matches 80 run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=3,lit=false] replace minecraft:black_candle[candles=3,lit=true]
execute if score @s obl.phase_transition matches 80 run fill ~20 ~6 ~20 ~-20 ~-12 ~-20 minecraft:black_candle[candles=4,lit=false] replace minecraft:black_candle[candles=4,lit=true]
execute if score @s obl.phase_transition matches 80 run effect give @a[distance=..50] blindness 1 0 true
execute if score @s obl.phase_transition matches 80 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5
execute if score @s obl.phase_transition matches 80 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5
execute if score @s obl.phase_transition matches 80 run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 1.5


execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 100 run summon marker ~ ~ ~ {Tags:["obl.fake.black_death","obl.first_appearance"]}
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 100 run summon marker ~ ~ ~ {Tags:["obl.fake.black_death"]}
execute if score @s obl.phase_transition matches 100 as @a[distance=..50] run function oblivion:playing/bosses/start/black_death
execute if score @s obl.phase_transition matches 100 as @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] at @s run tp @s ~ ~ ~ facing entity @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest]
execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 100 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/story.1
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 100 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/repeat.1

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 200 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/story.2
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 200 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/repeat.2

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 300 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/story.3
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 300 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/repeat.3

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 400 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/story.4
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 400 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/repeat.4

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 500 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/story.5
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 500 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/repeat.5

execute if score @s[tag=obl.first_appearance] obl.phase_transition matches 570 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/story.6
execute if score @s[tag=!obl.first_appearance] obl.phase_transition matches 570 at @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] as @a[distance=..50] run function oblivion:lines/bosses/black_death/spawning/repeat.6

execute if score @s obl.phase_transition matches 600 as @e[type=marker,tag=obl.fake.black_death,limit=1,sort=nearest] at @s run function oblivion:abilities/bosses/black_death/spawn