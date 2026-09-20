tag @s add obl.temp.fall_hit

###   Р А З Р У Ш Е Н И Е   Б Л О К О В   ( р а д и у с   2 ,   к а к   у   к р и п е р а ,   н о   м е н ь ш е )
setblock ~ ~-2 ~ air destroy
fill ~-1 ~-1 ~-1 ~1 ~-1 ~1 air destroy
fill ~-2 ~ ~-1 ~2 ~ ~1 air destroy
fill ~-1 ~ ~-2 ~1 ~ ~2 air destroy
fill ~-1 ~1 ~-1 ~1 ~1 ~1 air destroy
setblock ~ ~2 ~ air destroy

###   С П Е Ц Э Ф Ф Е К Т Ы
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1
