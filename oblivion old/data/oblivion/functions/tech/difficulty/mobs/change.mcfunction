execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=1}] run function oblivion:tech/difficulty/mobs/effects/level1
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=2}] run function oblivion:tech/difficulty/mobs/effects/level2
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=3}] run function oblivion:tech/difficulty/mobs/effects/level3
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=4}] run function oblivion:tech/difficulty/mobs/effects/level4
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=5}] run function oblivion:tech/difficulty/mobs/effects/level5
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=6}] run function oblivion:tech/difficulty/mobs/effects/level6
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=7}] run function oblivion:tech/difficulty/mobs/effects/level7
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=8}] run function oblivion:tech/difficulty/mobs/effects/level8
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=9}] run function oblivion:tech/difficulty/mobs/effects/level9
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=10}] run function oblivion:tech/difficulty/mobs/effects/level10
execute if entity @s[tag=!obl.difficultychanged,tag=!obl.mob] if entity @a[distance=..150,scores={obl.difficulty=11}] run function oblivion:tech/difficulty/mobs/effects/level11

execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=1}] run function oblivion:tech/difficulty/mobs/oblivion/level1
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=2}] run function oblivion:tech/difficulty/mobs/oblivion/level2
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=3}] run function oblivion:tech/difficulty/mobs/oblivion/level3
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=4}] run function oblivion:tech/difficulty/mobs/oblivion/level4
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=5}] run function oblivion:tech/difficulty/mobs/oblivion/level5
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=6}] run function oblivion:tech/difficulty/mobs/oblivion/level6
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=7}] run function oblivion:tech/difficulty/mobs/oblivion/level7
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=8}] run function oblivion:tech/difficulty/mobs/oblivion/level8
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=9}] run function oblivion:tech/difficulty/mobs/oblivion/level9
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=10}] run function oblivion:tech/difficulty/mobs/oblivion/level10
execute if entity @s[tag=!obl.difficultychanged,tag=obl.mob] if entity @a[distance=..150,scores={obl.difficulty=11}] run function oblivion:tech/difficulty/mobs/oblivion/level11

tag @s add obl.difficultychanged