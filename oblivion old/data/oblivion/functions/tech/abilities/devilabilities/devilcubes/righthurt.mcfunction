advancement revoke @s only oblivion:mobs/devil/rightdevilcubehurt

tp @e[tag=obl.devilcube] ~ -256 ~
kill @e[tag=obl.devilcube]
data merge entity @e[tag=devil,limit=1] {NoAI:0b,Invulnerable:0b}
particle minecraft:happy_villager ~ ~1 ~ 0.3 0.6 0.3 0 40
playsound minecraft:block.beacon.power_select master @a ~ ~ ~ 1 1

scoreboard players set @e[tag=devil,limit=1] abilities 473