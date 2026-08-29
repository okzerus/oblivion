execute store result score #unbreaking obl.item.enchantment_level run data get entity @s Inventory[{Slot:-106b}].tag.Enchantments[{id:"minecraft:unbreaking"}].lvl
scoreboard players operation randomizer obl.rng.range = #unbreaking obl.item.enchantment_level
scoreboard players add randomizer obl.rng.range 1
function obl:rng

execute if score randomizer obl.rng matches 1 run item modify entity @s weapon.offhand obl:shield_damage

execute store result score #damage obl.item.damage run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if score randomizer obl.rng matches 1 if score #damage obl.item.damage matches 336.. run item replace entity @s weapon.offhand with air
execute if score randomizer obl.rng matches 1 if score #damage obl.item.damage matches 336.. run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1

scoreboard players reset #damage obl.item.damage
scoreboard players reset #unbreaking obl.item.enchantment_level