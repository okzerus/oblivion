setblock 7 -64 7 barrel

execute if entity @s[tag=obl.enchantment_fading.tool.mainhand] run item replace block 7 -64 7 container.0 from entity @s weapon.mainhand
execute if entity @s[tag=obl.enchantment_fading.tool.offhand] run item replace block 7 -64 7 container.0 from entity @s weapon.offhand
execute if entity @s[tag=obl.enchantment_fading.armor.helmet] run item replace block 7 -64 7 container.0 from entity @s armor.head
execute if entity @s[tag=obl.enchantment_fading.armor.chestplate] run item replace block 7 -64 7 container.0 from entity @s armor.chest
execute if entity @s[tag=obl.enchantment_fading.armor.leggings] run item replace block 7 -64 7 container.0 from entity @s armor.legs
execute if entity @s[tag=obl.enchantment_fading.armor.boots] run item replace block 7 -64 7 container.0 from entity @s armor.feet

execute if data block 7 -64 7 Items[0].tag.Enchantments[0].id run scoreboard players set #enchantment_count oblivion 1
execute if data block 7 -64 7 Items[0].tag.Enchantments[1].id run scoreboard players set #enchantment_count oblivion 2
execute if data block 7 -64 7 Items[0].tag.Enchantments[2].id run scoreboard players set #enchantment_count oblivion 3
execute if data block 7 -64 7 Items[0].tag.Enchantments[3].id run scoreboard players set #enchantment_count oblivion 4
execute if data block 7 -64 7 Items[0].tag.Enchantments[4].id run scoreboard players set #enchantment_count oblivion 5
execute if data block 7 -64 7 Items[0].tag.Enchantments[5].id run scoreboard players set #enchantment_count oblivion 6
execute if data block 7 -64 7 Items[0].tag.Enchantments[6].id run scoreboard players set #enchantment_count oblivion 7
execute if data block 7 -64 7 Items[0].tag.Enchantments[7].id run scoreboard players set #enchantment_count oblivion 8
execute if data block 7 -64 7 Items[0].tag.Enchantments[8].id run scoreboard players set #enchantment_count oblivion 9
execute if data block 7 -64 7 Items[0].tag.Enchantments[9].id run scoreboard players set #enchantment_count oblivion 10
execute if data block 7 -64 7 Items[0].tag.Enchantments[10].id run scoreboard players set #enchantment_count oblivion 11
execute if data block 7 -64 7 Items[0].tag.Enchantments[11].id run scoreboard players set #enchantment_count oblivion 12

scoreboard players operation randomizer obl.rng.range = #enchantment_count oblivion
function oblivion:rng

execute if score randomizer obl.rng matches 1 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[0].lvl
execute if score randomizer obl.rng matches 2 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[1].lvl
execute if score randomizer obl.rng matches 3 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[2].lvl
execute if score randomizer obl.rng matches 4 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[3].lvl
execute if score randomizer obl.rng matches 5 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[4].lvl
execute if score randomizer obl.rng matches 6 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[5].lvl
execute if score randomizer obl.rng matches 7 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[6].lvl
execute if score randomizer obl.rng matches 8 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[7].lvl
execute if score randomizer obl.rng matches 9 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[8].lvl
execute if score randomizer obl.rng matches 10 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[9].lvl
execute if score randomizer obl.rng matches 11 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[10].lvl
execute if score randomizer obl.rng matches 12 store result score #enchantment_level oblivion run data get block 7 -64 7 Items[0].tag.Enchantments[11].lvl

scoreboard players remove #enchantment_level oblivion 1
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 1 run data remove block 7 -64 7 Items[0].tag.Enchantments[0]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 2 run data remove block 7 -64 7 Items[0].tag.Enchantments[1]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 3 run data remove block 7 -64 7 Items[0].tag.Enchantments[2]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 4 run data remove block 7 -64 7 Items[0].tag.Enchantments[3]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 5 run data remove block 7 -64 7 Items[0].tag.Enchantments[4]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 6 run data remove block 7 -64 7 Items[0].tag.Enchantments[5]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 7 run data remove block 7 -64 7 Items[0].tag.Enchantments[6]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 8 run data remove block 7 -64 7 Items[0].tag.Enchantments[7]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 9 run data remove block 7 -64 7 Items[0].tag.Enchantments[8]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 10 run data remove block 7 -64 7 Items[0].tag.Enchantments[9]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 11 run data remove block 7 -64 7 Items[0].tag.Enchantments[10]
execute if score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 12 run data remove block 7 -64 7 Items[0].tag.Enchantments[11]

execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 1 store result block 7 -64 7 Items[0].tag.Enchantments[0].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 2 store result block 7 -64 7 Items[0].tag.Enchantments[1].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 3 store result block 7 -64 7 Items[0].tag.Enchantments[2].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 4 store result block 7 -64 7 Items[0].tag.Enchantments[3].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 5 store result block 7 -64 7 Items[0].tag.Enchantments[4].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 6 store result block 7 -64 7 Items[0].tag.Enchantments[5].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 7 store result block 7 -64 7 Items[0].tag.Enchantments[6].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 8 store result block 7 -64 7 Items[0].tag.Enchantments[7].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 9 store result block 7 -64 7 Items[0].tag.Enchantments[8].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 10 store result block 7 -64 7 Items[0].tag.Enchantments[9].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 11 store result block 7 -64 7 Items[0].tag.Enchantments[10].lvl short 1 run scoreboard players get #enchantment_level oblivion
execute unless score #enchantment_level oblivion matches 0 if score randomizer obl.rng matches 12 store result block 7 -64 7 Items[0].tag.Enchantments[11].lvl short 1 run scoreboard players get #enchantment_level oblivion

execute if entity @s[tag=obl.enchantment_fading.tool.mainhand] run item replace entity @s weapon.mainhand from block 7 -64 7 container.0
execute if entity @s[tag=obl.enchantment_fading.tool.offhand] run item replace entity @s weapon.offhand from block 7 -64 7 container.0
execute if entity @s[tag=obl.enchantment_fading.armor.helmet] run item replace entity @s armor.head from block 7 -64 7 container.0
execute if entity @s[tag=obl.enchantment_fading.armor.chestplate] run item replace entity @s armor.chest from block 7 -64 7 container.0
execute if entity @s[tag=obl.enchantment_fading.armor.leggings] run item replace entity @s armor.legs from block 7 -64 7 container.0
execute if entity @s[tag=obl.enchantment_fading.armor.boots] run item replace entity @s armor.feet from block 7 -64 7 container.0

particle minecraft:enchant ~ ~1.7 ~ 0 0 0 1 50
particle minecraft:witch ~ ~ ~ 0 0 0 0.1 50
playsound minecraft:block.enchantment_table.use player @a ~ ~ ~ 1 0.5
playsound minecraft:block.amethyst_block.break player @a ~ ~ ~ 1 0.5
playsound minecraft:block.beacon.power_select player @a ~ ~ ~ 1 0.5
execute unless score @s obl.enchantment_fading.announced matches 1.. run function oblivion:tech/difficulty/enchantment_fading/announcement
scoreboard players set @s obl.enchantment_fading.announced 1200
scoreboard players reset #enchantment_count oblivion
scoreboard players reset #enchantment_level oblivion

setblock 7 -64 7 air