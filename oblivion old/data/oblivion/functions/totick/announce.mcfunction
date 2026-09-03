schedule function oblivion:totick/announce 60t

# Announce connected players about current events

execute if score greatday oblivion matches 1 as @a[tag=!announced.gd] at @s run function oblivion:tech/announce/greatday
execute if score pearlmoon oblivion matches 1 as @a[tag=!announced.pm] at @s run function oblivion:tech/announce/pearlnight
execute if score bloodmoon oblivion matches 1 as @a[tag=!announced.bm] at @s run function oblivion:tech/announce/bloodmoon
execute if score solareclipse oblivion matches 1 as @a[tag=!announced.se] at @s run function oblivion:tech/announce/solareclipse
execute if score xmasmoon oblivion matches 1 as @a[tag=!announced.xm] at @s run function oblivion:tech/announce/xmasmoon

execute if score greatday oblivion matches 0 as @a[tag=announced.gd] run tag @s remove announced.gd
execute if score pearlnight oblivion matches 0 as @a[tag=announced.pm] run tag @s remove announced.pm
execute if score bloodmoon oblivion matches 0 as @a[tag=announced.bm] run tag @s remove announced.bm
execute if score solareclipse oblivion matches 0 as @a[tag=announced.se] run tag @s remove announced.se
execute if score xmasmoon oblivion matches 0 as @a[tag=announced.xm] run tag @s remove announced.xm