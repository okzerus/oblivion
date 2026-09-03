tellraw @a {"text":"Аметистовая Пикси была побеждена!","italic":true,"color":"dark_purple"}
advancement grant @a[tag=inbattlewithpixie] only oblivion:advancements/mobs/amethystpixie
execute as @a[tag=inbattlewithpixie,scores={obl.difficulty=4}] at @s run function oblivion:tech/difficulty/levelup/5
advancement revoke @a[tag=inbattlewithpixie] only oblivion:advancements/mobs/amethystpixiedeathdefault
scoreboard players set amethystpixiealive oblivion 0
stopsound @a[tag=inbattlewithpixie] voice
scoreboard players set @a[tag=inbattlewithpixie] pixiemusic 1
xp add @a[tag=inbattlewithpixie] 1000 points
tag @a[tag=inbattlewithpixie] remove inbattlewithpixie

kill @e[tag=obl.pixieclone]
kill @e[tag=obl.pixieminion]


bossbar remove oblivion:amethystpixie

stopsound @a voice

execute as @e[tag=amethystpixie] at @s run tp ~ -10000 ~
tag @e[tag=amethystpixie] remove amethystpixie