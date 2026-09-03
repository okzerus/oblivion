schedule function oblivion:ticksheduled 40t

# Join event

execute as @a[tag=!obl.joined] run function oblivion:tech/newplayer
execute as @a[tag=!obl.scores] run function oblivion:tech/setupscores

execute unless score xmasmoon oblivion matches 1 as @a[tag=xmasmoonsurviving] run function oblivion:night/xmas/resetscoreboards_xmasmoon
execute unless score solareclipse oblivion matches 1 as @a[tag=solareclipsesurviving] run function oblivion:day/resetscoreboards_solareclipse
execute unless score bloodmoon oblivion matches 1 as @a[tag=bloodmoonsurviving] run function oblivion:night/resetscoreboards_bloodmoon

execute unless score solareclipse oblivion matches 1 as @e[tag=solarmob] at @s run tp ~ -256 ~
execute unless score solareclipse oblivion matches 1 as @e[tag=solarmob] at @s run kill @s
execute unless score bloodmoon oblivion matches 1 as @e[tag=bloodmob] at @s run tp ~ -256 ~
execute unless score bloodmoon oblivion matches 1 as @e[name="Гигантский Дьявольский Куб"] at @s run tp ~ -256 ~
execute unless score bloodmoon oblivion matches 1 as @e[name="Дьявольский куб"] at @s run tp ~ -256 ~
execute unless score bloodmoon oblivion matches 1 as @e[tag=bloodmob] at @s run kill @s
execute unless score bloodmoon oblivion matches 1 as @e[name="Гигантский Дьявольский Куб"] at @s run kill @s
execute unless score bloodmoon oblivion matches 1 as @e[name="Дьявольский куб"] at @s run kill @s
execute unless score xmasmoon oblivion matches 1 as @e[tag=xmasmob] at @s run tp ~ -256 ~
execute unless score xmasmoon oblivion matches 1 as @e[tag=xmasmob] at @s run kill @s

# Day night

execute if score time oblivion matches 12500..22999 if score obl.isday oblivion matches 1 run function oblivion:night/nextnight
execute if score time oblivion matches 23000..24000 unless score obl.isday oblivion matches 1 run function oblivion:day/nextday
execute if score time oblivion matches 1..12499 unless score obl.isday oblivion matches 1 run function oblivion:day/nextday



execute unless score xmasmoon oblivion matches 1 unless score bloodmoon oblivion matches 1 unless score solareclipse oblivion matches 1 unless score hungeralive oblivion matches 1 unless score devilalive oblivion matches 1 run gamerule mobGriefing true