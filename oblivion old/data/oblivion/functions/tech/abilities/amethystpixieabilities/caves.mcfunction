###   A N N O U N C E M E N T
tellraw @a[tag=inbattlewithpixie] {"text":"Ярость Аметистовой Пикси приходит в норму..","italic":true,"color":"purple"}

###   L O O T   T A B L E   R E P L A C E   (The Eternal Stella can be only obtained from the Amethyst Pixie if she's been on the surface throughout the whole battle)
data merge entity @s[tag=obl.surfacebydefault] {DeathLootTable:"oblivion:mobs/amethyst_pixie/no_stella"}

###   I N F I N I T E   R A G E   D I S A B L E
function oblivion:tech/mob_rage_disable
tag @s remove obl.infinite_rage

###   T A G S   &   S C O R E B O A R D S
tag @s remove obl.surface
tag @s remove obl.surfacebydefault
scoreboard players set @s abilities 0

###   B O S S B A R   R E P L A C E
bossbar set oblivion:amethystpixie name [{"text":"Аметистовая Пикси","color":"light_purple"}]
bossbar set oblivion:amethystpixie color pink
bossbar set oblivion:amethystpixie style notched_12