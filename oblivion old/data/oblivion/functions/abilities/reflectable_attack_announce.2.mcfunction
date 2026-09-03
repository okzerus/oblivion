execute as @e[type=marker,tag=obl.reflectable_attack_announce] at @s run playsound minecraft:entity.experience_orb.pickup hostile @a[tag=!obl.attack_announce] ~ ~ ~ 3 1.05
tag @e remove obl.attack_announce
kill @e[type=marker,tag=obl.reflectable_attack_announce]