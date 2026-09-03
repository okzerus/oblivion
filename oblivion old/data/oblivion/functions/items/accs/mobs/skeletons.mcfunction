team join skeletons @e[type=#minecraft:skeletons,tag=!bloodmob,tag=!solarmob,tag=!dnl.mob,tag=!obl.mob,tag=!camp_mob,distance=..30,tag=!obl.cantteam]
execute if entity @e[type=skeleton,distance=..30] if entity @e[type=stray,distance=..30] if entity @e[type=wither_skeleton,distance=..30] run advancement grant @s only oblivion:advancements/accs/other/skeletons
team join skeletons @s