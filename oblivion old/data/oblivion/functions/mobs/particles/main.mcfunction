
###   M O B S
execute if entity @s[type=zombie,tag=obl.pickaxe] run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0 2
execute if entity @s[type=zombie,tag=obl.armormob] run particle enchant ~ ~1 ~ 0.3 0.5 0.3 0 2
execute if entity @s[type=zombie,tag=obl.oblivionspirit] run function oblivion:tech/altars/oblivionspirit
execute if entity @s[type=creeper,tag=obl.nuclear_creeper] run particle minecraft:falling_dust lime_concrete ~ ~1 ~ 0.3 0.6 0.3 0 1
execute if entity @s[type=spider,tag=obl.mother] run particle minecraft:falling_dust cobweb ~ ~.4 ~ 0.2 0.2 0.2 0 1
execute if entity @s[type=husk,tag=obl.anomaly.desert] run particle falling_dust sand ~ ~2 ~ 3 2 3 0 2
execute if entity @s[type=husk,tag=obl.anomaly.desert] run particle block sand ~ ~1 ~ 0.3 0.6 0.3 0 2
execute if entity @s[type=husk,tag=obl.anomaly.desert] run particle falling_dust sand ~ ~1 ~ 0.3 0.6 0.3 0 3
execute if entity @s[type=stray,tag=obl.anomaly.snow] run particle falling_dust snow_block ~ ~2 ~ 3 2 3 0 2
execute if entity @s[type=stray,tag=obl.anomaly.snow] run particle block snow_block ~ ~1 ~ 0.3 0.6 0.3 0 2
execute if entity @s[type=stray,tag=obl.anomaly.snow] run particle falling_dust snow_block ~ ~1 ~ 0.3 0.6 0.3 0 3
execute if entity @s[type=stray,tag=obl.anomaly.snow] run particle falling_dust ice ~ ~1 ~ 0.3 0.6 0.3 0 2
execute if entity @s[type=vex,tag=obl.ice_shard] run particle dust 0.7 0.7 1 0.8 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=vex,tag=obl.desert_shard] run particle dust 1 0.8 0.6 0.8 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=vex,tag=obl.wisp] run particle soul_fire_flame ~ ~.4 ~ 0.01 0.01 0.01 0 1

execute if entity @s[type=bat,tag=obl.pixie.redstone] run particle dust 1 0 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.redstone] at @a[distance=..25] run particle dust 1 0 0 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.emerald] run particle dust 0 1 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.emerald] at @a[distance=..25] run particle dust 0 1 0 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.lapis_lazuli] run particle dust 0 0 1 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.lapis_lazuli] at @a[distance=..25] run particle dust 0 0 1 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.coal] run particle dust 0.1 0.1 0.1 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.coal] at @a[distance=..25] run particle dust 0.1 0.1 0.1 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.netherite] run particle dust 0.3 0.2 0.2 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.netherite] at @a[distance=..25] run particle dust 0.3 0.2 0.2 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.iron] run particle dust 0.8 0.8 0.8 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.iron] at @a[distance=..25] run particle dust 0.8 0.8 0.8 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.gold] run particle dust 1 1 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.gold] at @a[distance=..25] run particle dust 1 1 0 1 ~ ~.4 ~ 0.2 0 0.2 0 1
execute if entity @s[type=bat,tag=obl.pixie.diamond] run particle dust 0.65 0.65 1 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=bat,tag=obl.pixie.diamond] at @a[distance=..25] run particle dust 0.8 0.8 1 1 ~ ~.4 ~ 0.2 0 0.2 0 1

execute if entity @s[type=blaze,tag=obl.storm] run particle minecraft:block glowstone ~ ~1 ~ 0.3 0.6 0.3 0 3
execute if entity @s[type=blaze,tag=obl.storm] run particle flame ~ ~1 ~ 0.3 0.6 0.3 0.09 1
execute if entity @s[type=vex,tag=obl.bastion_soul] run particle dust 1 1 0 1 ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=vex,tag=obl.fire_spark] run particle flame ~ ~.4 ~ 0.01 0.01 0.01 0 1
execute if entity @s[type=vex,tag=obl.withering_sphere] run particle squid_ink ~ ~.4 ~ 0.01 0.01 0.01 0 1


###   B O S S E S
execute if entity @s[type=wither_skeleton,tag=obl.boss.cursed_armor,tag=obl.phase.2,tag=!obl.phase.3] run particle enchant ~ ~1 ~ 0.3 0.9 0.3 0.01 3
execute if entity @s[type=wither_skeleton,tag=obl.boss.cursed_armor,tag=obl.phase.3,tag=!obl.cursed_armor.spirit] run particle enchant ~ ~1 ~ 0.3 0.9 0.3 0.01 3
execute if entity @s[type=wither_skeleton,tag=obl.cursed_armor.part] run particle enchant ~ ~1 ~ 0.3 0.9 0.3 0.01 3


###   M I S C
execute if score blood_moon oblivion matches 1 run function oblivion:mobs/particles/blood_moon
execute if score solar_eclipse oblivion matches 1 run function oblivion:mobs/particles/solar_eclipse
execute if score xmas_night oblivion matches 1 run function oblivion:mobs/particles/xmas_night

tag @s add obl.temp.particle_shown