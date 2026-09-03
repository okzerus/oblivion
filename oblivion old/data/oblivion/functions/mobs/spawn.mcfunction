###   M U R A S A M A
execute if entity @s[type=#oblivion:murasama.mobs,tag=!obl.checked] if entity @s[y=50,dy=-200] unless entity @e[type=armor_stand,distance=..300,tag=obl.murasama_stand] if predicate oblivion:chance/0.005 run function oblivion:items/murasama/spawn

###   O V E R W O R L D
## MOBS
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked,y=50,dy=-200] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/undead_miner
execute if dimension minecraft:overworld if entity @s[type=dolphin,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/alpha_dolphin
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/infected_zombie
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=4..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/armor.netherite
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pickaxe.diamond
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/scythe.diamond
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=1..}] if predicate oblivion:chance/1.5 run function oblivion:mobs/overworld/armor.diamond
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=1..}] if predicate oblivion:chance/1.5 run function oblivion:mobs/overworld/pickaxe.iron
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=1..}] if predicate oblivion:chance/1.5 run function oblivion:mobs/overworld/scythe.gold
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/3 run function oblivion:mobs/overworld/pickaxe.stone
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/3 run function oblivion:mobs/overworld/scythe.iron
execute if dimension minecraft:overworld if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=1..}] if predicate oblivion:chance/3 run function oblivion:mobs/overworld/armor.iron
execute if dimension minecraft:overworld if entity @s[type=skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/3 run function oblivion:mobs/overworld/viking
execute if dimension minecraft:overworld if entity @s[type=skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/5 run function oblivion:mobs/overworld/effect_skeleton.blindness
execute if dimension minecraft:overworld if entity @s[type=skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=1..}] if predicate oblivion:chance/7 run function oblivion:mobs/overworld/effect_skeleton.poison
execute if dimension minecraft:overworld if entity @s[type=skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/10 run function oblivion:mobs/overworld/effect_skeleton.weak
execute if dimension minecraft:overworld if entity @s[type=creeper,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/5 run function oblivion:mobs/overworld/nuclear_creeper
execute if dimension minecraft:overworld if entity @s[type=creeper,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] unless score time oblivion matches 0..12500 if predicate oblivion:chance/5 run function oblivion:mobs/overworld/wisp
execute if dimension minecraft:overworld if entity @s[type=squid,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/3 run function oblivion:mobs/overworld/wandering_guardian
execute if dimension minecraft:overworld if entity @s[type=husk,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/1.5 run function oblivion:mobs/overworld/anomaly.desert
execute if dimension minecraft:overworld if entity @s[type=husk,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/3 run function oblivion:mobs/overworld/starvation
execute if dimension minecraft:overworld if entity @s[type=stray,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/1.5 run function oblivion:mobs/overworld/anomaly.snow
## MINIBOSSES
execute if entity @s[type=spider,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/spider_mother
execute if entity @s[type=zombie,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/gargantuan

##################################### PIXIE WIP #####################################
# Fire Res + 1 STR
execute if entity @s[type=zombified_piglin,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=4..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.netherite
# + 1 STR
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.diamond
# + 1 HEALTH BOOST
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=2..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.emerald
# Regen
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.redstone
# + 1 HAS
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.gold
# Night Vision
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.lapis_lazuli
# + 0.5 RES
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.iron
# + 1 SPD
execute if entity @s[type=bat,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=0..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/overworld/pixie.coal

##################################### PIXIE WIP #####################################

###   N E T H E R
execute if dimension minecraft:the_nether if entity @s[type=zombified_piglin,tag=!obl.checked,y=128,dy=-200] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/1.5 run function oblivion:mobs/nether/fire_spark
execute if dimension minecraft:the_nether if entity @s[type=wither_skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/20 run function oblivion:mobs/nether/withering_sphere
execute if dimension minecraft:the_nether if entity @s[type=wither_skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/20 run function oblivion:mobs/nether/wither.bow
execute if dimension minecraft:the_nether if entity @s[type=wither_skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/15 run function oblivion:mobs/nether/wither.scythe
execute if dimension minecraft:the_nether if entity @s[type=wither_skeleton,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/10 run function oblivion:mobs/nether/wither.axe
execute if dimension minecraft:the_nether if entity @s[type=piglin_brute,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=3..}] if predicate oblivion:chance/70 run function oblivion:mobs/nether/bastion_soul

## MINIBOSSES
execute if dimension minecraft:the_nether if entity @s[type=blaze,tag=!obl.checked] if entity @a[distance=..100,scores={obl.difficulty=4..}] if predicate oblivion:chance/0.5 run function oblivion:mobs/nether/storm

tag @s add obl.checked