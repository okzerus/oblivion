###   A N N O U N C E M E N T
tellraw @a[tag=inbattlewithpixie] {"text":"Ярость Аметистовой Пикси возрастает, когда она находится на поверхности!","italic":true,"color":"purple"}

###   I N F I N I T E   R A G E   E N A B L E
function oblivion:tech/mob_rage_enable
tag @s add obl.infinite_rage

###   T A G S   &   S C O R E B O A R D S
tag @s add obl.surface
scoreboard players set @s abilities 0

###   B O S S B A R   R E P L A C E
bossbar set oblivion:amethystpixie name [{"text":"Аметистовая Пикси","color":"red"}]
bossbar set oblivion:amethystpixie color red
bossbar set oblivion:amethystpixie style notched_20