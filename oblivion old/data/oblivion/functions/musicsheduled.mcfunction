schedule function oblivion:musicsheduled 20t

execute if score bloodmoon oblivion matches 1 as @a[nbt={Dimension:"minecraft:overworld"},tag=!inbattlewithdevil,tag=!inbattlewithhunger,tag=!inbattlewithpixie] run scoreboard players add @s bloodmusic 1
execute if score pearlmoon oblivion matches 1 as @a[nbt={Dimension:"minecraft:overworld"},tag=!inbattlewithdevil,tag=!inbattlewithhunger,tag=!inbattlewithpixie] run scoreboard players add @s pearlmusic 1
execute if score solareclipse oblivion matches 1 as @a[nbt={Dimension:"minecraft:overworld"},tag=!inbattlewithdevil,tag=!inbattlewithhunger,tag=!inbattlewithpixie] run scoreboard players add @s solarmusic 1
execute if score greatday oblivion matches 1 as @a[nbt={Dimension:"minecraft:overworld"},tag=!inbattlewithdevil,tag=!inbattlewithhunger,tag=!inbattlewithpixie] run scoreboard players add @s greatmusic 1
execute if score xmasmoon oblivion matches 1 as @a[nbt={Dimension:"minecraft:overworld"},tag=!inbattlewithdevil,tag=!inbattlewithhunger,tag=!inbattlewithpixie] run scoreboard players add @s xmasmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithpixie] if score amethystpixiealive oblivion matches 1 run scoreboard players add @s pixiemusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithhunger] if score hungeralive oblivion matches 1 run scoreboard players add @s hungermusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithdevil] if score devilalive oblivion matches 1 run scoreboard players add @s devilmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewitharmor] if score cursedarmoralive oblivion matches 1 run scoreboard players add @s cursedmusic 1



execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s bloodmusic matches 92 at @s run playsound minecraft:oblivion.bloodmoon voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s pearlmusic matches 111 at @s run playsound minecraft:oblivion.pearlmoon voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s solarmusic matches 100 at @s run playsound minecraft:oblivion.solareclipse voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s greatmusic matches 132 at @s run playsound minecraft:oblivion.greatday voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s xmasmusic matches 166 at @s run playsound minecraft:oblivion.xmasmoon voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithpixie] if score @s pixiemusic matches 236 at @s run playsound minecraft:oblivion.amethystpixie voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithhunger] if score @s hungermusic matches 171 at @s run playsound minecraft:oblivion.hunger voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithdevil] if score @s devilmusic matches 258 at @s run playsound minecraft:oblivion.devil voice @s ~ ~ ~ 1 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewitharmor] if score @s cursedmusic matches 329 at @s run playsound minecraft:oblivion.cursedarmor voice @s ~ ~ ~ 1 1



execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s bloodmusic matches 92.. run scoreboard players set @s bloodmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s pearlmusic matches 111.. run scoreboard players set @s pearlmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s solarmusic matches 100.. run scoreboard players set @s solarmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s greatmusic matches 132.. run scoreboard players set @s greatmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"}] if score @s xmasmusic matches 166.. run scoreboard players set @s xmasmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithpixie] if score @s pixiemusic matches 236.. run scoreboard players set @s pixiemusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithhunger] if score @s hungermusic matches 171.. run scoreboard players set @s hungermusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewithdevil] if score @s devilmusic matches 258.. run scoreboard players set @s devilmusic 1
execute as @a[nbt={Dimension:"minecraft:overworld"},tag=inbattlewitharmor] if score @s cursedmusic matches 329.. run scoreboard players set @s cursedmusic 1




execute in minecraft:the_nether as @a[distance=0..] run stopsound @s voice
execute in minecraft:the_end as @a[distance=0..] run stopsound @s voice