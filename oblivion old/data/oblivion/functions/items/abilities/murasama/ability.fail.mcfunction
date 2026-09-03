execute if score @s obl.murasama.time.ability matches ..29 run title @s subtitle [{"text":"НЕУДАЧА!","color":"#D11212"}]
execute if score @s obl.murasama.time.ability matches ..29 run tellraw @s ["",{"text":"М у ","italic":true,"color":"#FF0003"},{"text":"р а ","italic":true,"color":"#FF0B0E"},{"text":"с а ","italic":true,"color":"#FF1719"},{"text":"м а   ","italic":true,"color":"#FF2A2C"},{"text":"о т к а ","italic":true,"color":"#FF3437"},{"text":"т ы в а ","italic":true,"color":"#FF4648"},{"text":"е т с я ","italic":true,"color":"#FF5456"},{"text":"!   (0:30)","italic":true,"color":"#FA5557"}]

scoreboard players set @s obl.murasama.time.ability 0
scoreboard players set @s obl.murasama.used.ability 1
scoreboard players set @s obl.murasama.cd.ability 1200
scoreboard players remove @s obl.murasama.blood 15
playsound minecraft:entity.villager.no hostile @a ~ ~ ~ 1 1
playsound minecraft:block.respawn_anchor.deplete hostile @a ~ ~ ~ 1 1
effect clear @s darkness
tag @s remove obl.murasama_offhand