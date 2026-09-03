tellraw @s [{"text":"\n"},{"text":"[","color":"#873839"},{"text":"i","color":"#A27E1C"},{"text":"]","color":"#873839"},{"text":" Приёмник света MkII","color":"#716063"},{"text":"\n"},{"text":"> ","color":"#873839"},{"text":"Был получен запрос на телепортацию, который был проигнорирован!","color":"#A78E94"},{"text":"\n"},{"text":"> ","color":"#873839"},{"text":"Чтобы телепортироваться к Приёмнику света, съешьте Светящиеся ягоды, держа их во второстепенной руке!","color":"#A78E94"},{"text":"\n "}]
playsound minecraft:block.respawn_anchor.deplete player @s ~ ~ ~ 1 1
particle minecraft:firework ~ ~1 ~ 0 0 0 0.1 20
tag @s add obl.glowing_receiver.announced
scoreboard players set @s obl.glowing_receiver.player_cd 200