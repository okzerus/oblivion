schedule function oblivion:on.5s 5s

###   V I L L A G E R   P R O F F E S S I O N   U P D A T E
execute as @e[type=villager] at @s if entity @a[distance=..15] run function oblivion:qol/villagers/profession_updating.check

###   S T R U C T U R E   P O I N T E R S
execute as @a[tag=obl.near.black_death_memorial,scores={obl.difficulty=2..}] at @s unless entity @e[type=marker,tag=obl.black_death.memorial.center,distance=..15] positioned ~ ~1 ~ run function oblivion:tech/projectiles/structure_pointers/black_death_memorial