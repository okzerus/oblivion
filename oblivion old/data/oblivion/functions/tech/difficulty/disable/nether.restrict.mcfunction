title @s actionbar {"text":"Вы не можете использовать Портал в Незер, поскольку ещё не достигли требуемого уровня! (3)","italic":true,"color":"dark_red"}
effect give @s blindness 2 9 true
effect give @s slowness 2 9 true
effect give @s weakness 2 9 true
effect give @s mining_fatigue 2 9 true
particle minecraft:angry_villager ~ ~1 ~ 0 0 0 0 1 force @s
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 cobblestone replace minecraft:obsidian