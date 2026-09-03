execute if score bloodmoon oblivion matches 1 if score xmassoul oblivion matches 1 run function oblivion:tech/kpk/isbloodxmas
execute if score bloodmoon oblivion matches 1 if score xmassoul oblivion matches 0 run function oblivion:tech/kpk/isblood
execute if score solareclipse oblivion matches 1 if score xmassoul oblivion matches 1 run function oblivion:tech/kpk/issolarxmas
execute if score solareclipse oblivion matches 1 if score xmassoul oblivion matches 0 run function oblivion:tech/kpk/issolar
execute if score xmasmoon oblivion matches 1 if score xmassoul oblivion matches 1 run function oblivion:tech/kpk/isxmasxmas
execute if score xmasmoon oblivion matches 1 if score xmassoul oblivion matches 0 run function oblivion:tech/kpk/isxmas
execute if score greatday oblivion matches 1 if score xmassoul oblivion matches 1 run function oblivion:tech/kpk/isgreatxmas
execute if score greatday oblivion matches 1 if score xmassoul oblivion matches 0 run function oblivion:tech/kpk/isgreat
execute if score pearlmoon oblivion matches 1 if score xmassoul oblivion matches 1 run function oblivion:tech/kpk/ispearlxmas
execute if score pearlmoon oblivion matches 1 if score xmassoul oblivion matches 0 run function oblivion:tech/kpk/ispearl
execute if score bloodmoon oblivion matches 0 if score solareclipse oblivion matches 0 if score xmasmoon oblivion matches 0 if score greatday oblivion matches 0 if score pearlmoon oblivion matches 0 if score xmassoul oblivion matches 1 run function oblivion:tech/kpk/isnothingxmas
execute if score bloodmoon oblivion matches 0 if score solareclipse oblivion matches 0 if score xmasmoon oblivion matches 0 if score greatday oblivion matches 0 if score pearlmoon oblivion matches 0 if score xmassoul oblivion matches 0 run function oblivion:tech/kpk/isnothing
execute at @s run playsound minecraft:ui.button.click master @s ~ ~ ~ 1 1.5
scoreboard players set @s kpk 1