execute at @s run setblock ~ ~ ~ air destroy
execute if entity @s[tag=obl.spawner.self_destruct] run playsound minecraft:block.respawn_anchor.deplete master @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:block.beacon.deactivate master @a[distance=..16] ~ ~ ~ 1 1.8

####################################################################################  L O O T  #################################################################################################################

## Типовой (generic)
# Зомби
execute if entity @s[tag=obl.spawner.generic,tag=obl.spawner.zombie,scores={obl.spawner.difficulty=4}] run loot spawn ~ ~ ~ loot obl:item/weapon/crack_of_dawn
# Скелет
#abc...

## abc...

####################################################################################  L O O T  #################################################################################################################

kill @s