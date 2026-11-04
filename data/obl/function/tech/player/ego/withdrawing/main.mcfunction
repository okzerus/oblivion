tag @s add obl.ego.withdrawing
scoreboard players add @s obl.ego.withdraw_progress 1

particle minecraft:enchant ~ ~2.5 ~ 0 0 0 10 1
tp @s ~ ~ ~ ~ ~0.1
execute if score @s obl.ego.withdraw_progress matches 80.. run tp @s ~ ~ ~ ~ ~0.2
execute if score @s obl.ego.withdraw_progress matches 140.. run tp @s ~ ~ ~ ~ ~0.2
execute if score @s obl.ego.withdraw_progress matches 200.. run tp @s ~ ~ ~ ~ ~0.4
execute if score @s obl.ego.withdraw_progress matches 250.. run tp @s ~ ~ ~ ~ ~0.5

execute if score @s obl.ego.withdraw_progress matches 1 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1 1.5
execute if score @s obl.ego.withdraw_progress matches 1 run effect give @s blindness 1 9 true

execute if score @s obl.ego.withdraw_progress matches 80 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.2 1.3
execute if score @s obl.ego.withdraw_progress matches 80 run effect give @s blindness 1 9 true

execute if score @s obl.ego.withdraw_progress matches 140 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.4 1.1
execute if score @s obl.ego.withdraw_progress matches 140 run effect give @s blindness 1 9 true
execute if score @s obl.ego.withdraw_progress matches 140 run effect give @s darkness infinite 9 true
execute if score @s obl.ego.withdraw_progress matches 140 run effect give @s minecraft:nausea 4 9 true

execute if score @s obl.ego.withdraw_progress matches 200 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.6 0.9
execute if score @s obl.ego.withdraw_progress matches 200 run effect give @s minecraft:nausea infinite 9 true

execute if score @s obl.ego.withdraw_progress matches 250 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 1.8 0.7

execute if score @s obl.ego.withdraw_progress matches 300 run playsound minecraft:entity.warden.heartbeat player @s ~ ~ ~ 2 0.5

execute if score @s obl.ego.withdraw_progress matches 1 run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.5 0.5
execute if score @s obl.ego.withdraw_progress matches 60 run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.5 0.5
execute if score @s obl.ego.withdraw_progress matches 120 run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.5 0.5
execute if score @s obl.ego.withdraw_progress matches 180 run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.5 0.5
execute if score @s obl.ego.withdraw_progress matches 240 run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.5 0.5
execute if score @s obl.ego.withdraw_progress matches 300 run playsound minecraft:block.portal.ambient ambient @s ~ ~ ~ 0.5 0.5

execute if score @s[x_rotation=90] obl.ego.withdraw_progress matches 360.. run function obl:tech/player/ego/tp/enter