scoreboard players add @s obl.black_death.prologue.tick 1
execute if score @s obl.black_death.prologue.tick matches 40 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.1
execute if score @s obl.black_death.prologue.tick matches 100 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.2
execute if score @s obl.black_death.prologue.tick matches 220 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.3
execute if score @s obl.black_death.prologue.tick matches 360 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.4
execute if score @s obl.black_death.prologue.tick matches 450 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.5
execute if score @s obl.black_death.prologue.tick matches 500 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.6
execute if score @s obl.black_death.prologue.tick matches 630 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.7
execute if score @s obl.black_death.prologue.tick matches 770 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.8
execute if score @s obl.black_death.prologue.tick matches 900 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.9
execute if score @s obl.black_death.prologue.tick matches 1000 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.10
execute if score @s obl.black_death.prologue.tick matches 1100 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.11
execute if score @s obl.black_death.prologue.tick matches 1200 at @e[type=marker,tag=obl.black_death.memorial.center,limit=1,sort=nearest] run function oblivion:lines/bosses/black_death/prologue/story.12
execute if score @s obl.black_death.prologue.tick matches 1200 run tag @s add obl.black_death_memorial.seen_prologue
execute if score @s obl.black_death.prologue.tick matches 1200 run tag @s remove obl.black_death_memorial.prologue
execute if score @s obl.black_death.prologue.tick matches 1200 run scoreboard players reset @s obl.black_death.prologue.tick