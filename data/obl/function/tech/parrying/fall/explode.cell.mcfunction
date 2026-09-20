###   Д Е К О Д И Р У Е М   С М Е Щ Е Н И Е   И З   Л И Н Е Й Н О Г О   И Н Д Е К С А
scoreboard players operation #dx obl = #i obl
scoreboard players operation #dx obl /= #side obl
scoreboard players operation #dx obl /= #side obl
scoreboard players operation #dx obl -= #radius obl

scoreboard players operation #dy obl = #i obl
scoreboard players operation #dy obl /= #side obl
scoreboard players operation #dy obl %= #side obl
scoreboard players operation #dy obl -= #radius obl

scoreboard players operation #dz obl = #i obl
scoreboard players operation #dz obl %= #side obl
scoreboard players operation #dz obl -= #radius obl

###   К В А Д Р А Т   Д И С Т А Н Ц И И   О Т   Ц Е Н Т Р А
scoreboard players operation #distsq obl = #dx obl
scoreboard players operation #distsq obl *= #dx obl
scoreboard players operation #tmp obl = #dy obl
scoreboard players operation #tmp obl *= #dy obl
scoreboard players operation #distsq obl += #tmp obl
scoreboard players operation #tmp obl = #dz obl
scoreboard players operation #tmp obl *= #dz obl
scoreboard players operation #distsq obl += #tmp obl

scoreboard players operation #coresq obl = #radius obl
scoreboard players operation #coresq obl *= #radius obl
scoreboard players operation #shellsq obl = #radius obl
scoreboard players add #shellsq obl 1
scoreboard players operation #shellsq obl *= #shellsq obl

execute store result storage obl:fall dx int 1 run scoreboard players get #dx obl
execute store result storage obl:fall dy int 1 run scoreboard players get #dy obl
execute store result storage obl:fall dz int 1 run scoreboard players get #dz obl

###   Я Д Р О   -   Р А З Р У Ш А Е Т С Я   В С Е Г Д А   ( е с л и   н е   з а щ и щ ё н )
execute if score #distsq obl <= #coresq obl run function obl:tech/parrying/fall/explode.cell.act with storage obl:fall

###   О Б О Л О Ч К А   -   Х А О Т И Ч Н О ,   К А К   У   В А Н И Л Ь Н О Г О   В З Р Ы В А
execute store result score #roll obl run random value 1..100
execute if score #distsq obl > #coresq obl if score #distsq obl <= #shellsq obl if score #roll obl matches 1..55 run function obl:tech/parrying/fall/explode.cell.act with storage obl:fall

###   Р Е К У Р С И Я   Н А   С Л Е Д У Ю Щ У Ю   Я Ч Е Й К У
scoreboard players add #i obl 1
execute if score #i obl < #total obl run function obl:tech/parrying/fall/explode.cell
