###   S T A R T
execute if score @s abilities matches 180 run playsound minecraft:entity.allay.death hostile @a ~ ~ ~ 0.8 0
execute if score @s abilities matches 180 run playsound minecraft:entity.vex.charge hostile @a ~ ~ ~ 0.8 0
execute if score @s abilities matches 180 run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 0.8 0

###   L O O P
execute if score @s abilities matches 180..210 run particle dust 1 0.4 1 1.7 ~ ~.3 ~ 0.3 0.3 0.3 0 5 force
execute if score @s abilities matches 210.. run particle dust 1 0.7 1 0.6 ~ ~.3 ~ 7 7 7 0 200 force

###   A B I L I T Y
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.5
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.6
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.7
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.8
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.9
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.0
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.1
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.2
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.3
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.4
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.5
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.6
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.7
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.8
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.9
execute if score @s abilities matches 210 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 2.0
execute if score @s abilities matches 210 run particle end_rod ~ ~.3 ~ 0 0 0 0.1 20 force
execute if score @s abilities matches 210 run data merge entity @s {Glowing:0b,Invulnerable:1b}
execute if score @s abilities matches 210 run tag @s add obl.invulnerable
execute if score @s abilities matches 210 run effect give @s weakness infinite 20 true
execute if score @s abilities matches 210 run item replace entity @s weapon.mainhand with air
execute if score @s abilities matches 210 run tag @s add obl.true_invisibility
execute if score @s abilities matches 210 run tag @s remove obl.amethysted_attack

execute if score @s abilities matches 230 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen

execute if score @s abilities matches 230 as @a[tag=obl.pixie_swing.chosen,limit=1] at @s anchored eyes rotated ~ 0 run summon minecraft:marker ^ ^1 ^-12 {Tags:["obl.pixie_swing"]}
execute if score @s abilities matches 233 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 235 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 235 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 235 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 238 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 240 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 240 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 240 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 240 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 240 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 243 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 245 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 245 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 245 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 245 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 245 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 248 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 250 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 250 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 250 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 250 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 250 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 253 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 255 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 255 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 255 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 255 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 255 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 258 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 260 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 260 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 260 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 260 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 260 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 263 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 265 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 265 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 265 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 265 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 265 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 268 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 270 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 270 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 270 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 270 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 270 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 273 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 275 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 275 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 275 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 275 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 275 as @e[type=marker,tag=obl.pixie_swing] at @s run tp @s ^ ^ ^24

execute if score @s abilities matches 278 run tag @e[type=marker,tag=obl.pixie_swing] add obl.pixie_swing.disable_aim
execute if score @s abilities matches 280 run tag @a remove obl.pixie_swing.chosen
execute if score @s abilities matches 280 run tag @e[type=marker,tag=obl.pixie_swing] remove obl.pixie_swing.disable_aim
execute if score @s abilities matches 280 unless entity @a[tag=obl.pixie_swing.chosen] run tag @r[tag=inbattlewithpixie] add obl.pixie_swing.chosen
execute if score @s abilities matches 280 as @e[type=marker,tag=obl.pixie_swing] at @s anchored eyes run function oblivion:tech/raycast/beam_instant/pixie_swing
execute if score @s abilities matches 280 run kill @e[type=marker,tag=obl.pixie_swing]

execute if score @s abilities matches 290 run data merge entity @s {Glowing:1b,Invulnerable:0b}
execute if score @s abilities matches 290 run tag @s remove obl.invulnerable
execute if score @s abilities matches 290 run loot replace entity @s weapon.mainhand loot oblivion:items/weapons/guardian_of_the_geode
execute if score @s abilities matches 290 run tag @s remove obl.true_invisibility
execute if score @s abilities matches 290 run tag @s add obl.amethysted_attack
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.5
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.6
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.7
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.8
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 0.9
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.0
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.1
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.2
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.3
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.4
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.5
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.6
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.7
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.8
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 1.9
execute if score @s abilities matches 290 run playsound minecraft:entity.enderman.teleport hostile @a ~ ~ ~ 0.8 2.0
execute if score @s abilities matches 290 run effect clear @s weakness
execute if score @s abilities matches 290 run particle end_rod ~ ~.3 ~ 0 0 0 0.1 20 force