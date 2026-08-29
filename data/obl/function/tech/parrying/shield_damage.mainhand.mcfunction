execute store result score #unbreaking obl.item.enchantment_level run data get entity @s SelectedItem.tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players operation randomizer obl.rng.range = #unbreaking obl.item.enchantment_level
scoreboard players add randomizer obl.rng.range 1
function obl:rng

execute if score randomizer obl.rng matches 1 run item modify entity @s weapon.mainhand obl:shield_damage

execute store result score #damage obl.item.damage run data get entity @s SelectedItem.tag.Damage
execute if score randomizer obl.rng matches 1 if score #damage obl.item.damage matches 336.. run item replace entity @s weapon.mainhand with air
execute if score randomizer obl.rng matches 1 if score #damage obl.item.damage matches 336.. run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1

scoreboard players reset #damage obl.item.damage
scoreboard players reset #unbreaking obl.item.enchantment_level
tag @s add obl.temp.mainhand_detected