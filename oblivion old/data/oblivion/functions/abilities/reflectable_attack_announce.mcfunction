tag @s add obl.attack_announce
particle minecraft:flash ~ ~1 ~ 0 0 0 0 1 normal @a[tag=!obl.attack_announce]
playsound minecraft:entity.experience_orb.pickup hostile @a[tag=!obl.attack_announce] ~ ~ ~ 3 0.9
execute unless entity @e[type=marker,tag=obl.reflectable_attack_announce,distance=..2] run summon minecraft:marker ~ ~ ~ {Tags:["obl.reflectable_attack_announce"]}
schedule function oblivion:abilities/reflectable_attack_announce.2 1t