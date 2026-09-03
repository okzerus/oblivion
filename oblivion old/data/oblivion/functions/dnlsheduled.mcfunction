schedule function oblivion:dnlsheduled 40t


# Lock dungeons for different levels

execute as @a[scores={obl.difficulty=0}] at @s run function oblivion:tech/difficulty/dungeons/level0
execute as @a[scores={obl.difficulty=1}] at @s run function oblivion:tech/difficulty/dungeons/level1
execute as @a[scores={obl.difficulty=2}] at @s run function oblivion:tech/difficulty/dungeons/level2
execute as @a[scores={obl.difficulty=3}] at @s run function oblivion:tech/difficulty/dungeons/level3
execute as @a[scores={obl.difficulty=4}] at @s run function oblivion:tech/difficulty/dungeons/level4
execute as @a[scores={obl.difficulty=5}] at @s run function oblivion:tech/difficulty/dungeons/level5
execute as @a[scores={obl.difficulty=6}] at @s run function oblivion:tech/difficulty/dungeons/level6
execute as @a[scores={obl.difficulty=7}] at @s run function oblivion:tech/difficulty/dungeons/level7
execute as @a[scores={obl.difficulty=8}] at @s run function oblivion:tech/difficulty/dungeons/level8

execute as @a unless entity @s[scores={obl.porkchop=1}] if entity @s[scores={obl.difficulty=3}] at @s if predicate oblivion:dnl/dnl.watcher_camp run function oblivion:tech/difficulty/debuffswatcher


# Lock bosses for different levels

execute as @e[tag=dnl.hunters_bow] at @s if entity @a[distance=..250,scores={obl.difficulty=..1}] run data merge entity @s {DisabledSlots:4144959}
execute as @e[tag=dnl.hunters_bow] at @s if entity @a[distance=..250,scores={obl.difficulty=2..}] run data merge entity @s {DisabledSlots:0}

execute as @e[type=illusioner,tag=illusioned_gallery] at @s if entity @a[distance=..250,scores={obl.difficulty=..4}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=illusioner,tag=illusioned_gallery,tag=!phase1,tag=!phase2,tag=!phase3] at @s if entity @a[distance=..250,scores={obl.difficulty=5..}] run data merge entity @s {Invulnerable:0b}

execute as @e[type=stray,tag=frost_watcher] at @s if entity @a[distance=..250,scores={obl.difficulty=..2}] run data merge entity @s {Invulnerable:1b}
execute as @e[type=stray,tag=frost_watcher] at @s if entity @a[distance=..250,scores={obl.difficulty=3..}] run data merge entity @s {Invulnerable:0b}


# Kill boats and minecarts under DNL and OBL bosses

execute at @e[tag=obl.boss] run kill @e[type=boat,distance=..5]
execute at @e[tag=obl.boss] run kill @e[type=minecart,distance=..5]