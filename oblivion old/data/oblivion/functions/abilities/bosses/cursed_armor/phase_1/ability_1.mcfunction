execute if score @s abilities matches 60 run playsound minecraft:block.beacon.activate master @a ~ ~ ~ 1 1
execute if score @s abilities matches 60 run playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 60 run tag @s add obl.armorshield
execute if score @s abilities matches 60 run data merge entity @s {Invulnerable:0b}
execute if score @s abilities matches 60 run tag @s remove obl.invulnerable
execute if score @s abilities matches 60 run summon marker ~ ~ ~ {Tags:["obl.cursed_shield"]}
execute if score @s abilities matches 60 run effect give @s slowness infinite 1 true
execute if score @s abilities matches 60 if entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_1/ability_1/story.1
execute if score @s abilities matches 60 unless entity @s[tag=obl.first_appearance] as @a[tag=obl.in_battle.cursed_armor] run function oblivion:lines/bosses/cursed_armor/attacks/phase_1/ability_1/repeat.1

execute if score @s abilities matches 180 run playsound minecraft:item.shield.break master @a ~ ~ ~ 1 0.1
execute if score @s abilities matches 180 run tag @s remove obl.armorshield
execute if score @s abilities matches 180 run kill @e[type=marker,tag=obl.cursed_shield]
execute if score @s abilities matches 180 run effect clear @s slowness