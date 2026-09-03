scoreboard players add @s obl.hurtcount 1

execute if score @s obl.hurtcount matches 20 run effect give @s regeneration 7 2 false
execute if score @s obl.hurtcount matches 20 run playsound block.beacon.power_select master @a ~ ~ ~ 0.5 1.5
execute if score @s obl.hurtcount matches 20 run scoreboard players set @s obl.hurtcount 0
advancement revoke @s only oblivion:tech/netheritearmor