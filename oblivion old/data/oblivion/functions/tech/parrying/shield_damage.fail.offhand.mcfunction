item modify entity @s weapon.offhand oblivion:shield_damage.fail

execute store result score #damage obl.item.damage run data get entity @s Inventory[{Slot:-106b}].tag.Damage
execute if score #damage obl.item.damage matches 336.. run item replace entity @s weapon.offhand with air
execute if score #damage obl.item.damage matches 336.. run playsound minecraft:entity.item.break player @a ~ ~ ~ 1 1

scoreboard players reset #damage obl.item.damage