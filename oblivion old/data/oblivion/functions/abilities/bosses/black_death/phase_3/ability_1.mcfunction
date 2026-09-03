summon minecraft:marker ~ ~ ~ {Tags:["obl.default_beam","obl.beam.curses"]}
tp @e[type=marker,limit=1,sort=nearest,tag=obl.default_beam] @s
execute as @e[type=marker,limit=1,sort=nearest,tag=obl.default_beam] at @s run tp ~ ~ ~
playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 1 0.1