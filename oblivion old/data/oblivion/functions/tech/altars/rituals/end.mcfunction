
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 1 as @e[type=item,tag=obl.altar.item.using,tag=obl.item.armor,limit=1,sort=nearest] at @s run function oblivion:tech/altars/recipes/end/unusual/add.check
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 2 as @e[type=item,tag=obl.altar.item.using,tag=obl.item.armor.unusual,limit=1,sort=nearest] at @s run function oblivion:tech/altars/recipes/end/unusual/remove
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 3 as @e[type=item,tag=obl.altar.item.using,tag=obl.item.summoner,limit=1,sort=nearest] at @s run function oblivion:tech/altars/recipes/end/summoner_item
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 4 as @e[type=item,tag=obl.altar.item.using,tag=obl.item.broken_glowing_receiver,limit=1,sort=nearest] at @s run function oblivion:tech/altars/recipes/end/glowing_receiver_mk1
execute if entity @s[tag=obl.altar.crafting] if score @s obl.altar.recipe_id matches 5 as @e[type=item,tag=obl.altar.item.using,tag=obl.item.glowing_receiver,limit=1,sort=nearest] at @s run function oblivion:tech/altars/recipes/end/glowing_receiver_mk2

execute as @p[tag=obl.bad_enchantment,tag=!obl.enchanted,distance=...5] at @s run function oblivion:tech/altars/rituals/player_enchantment/enchant.bad
execute as @p[tag=obl.good_enchantment,tag=!obl.enchanted,distance=...5] at @s run function oblivion:tech/altars/rituals/player_enchantment/enchant.good

function oblivion:tech/altars/disabled
scoreboard players set @s obl.altar.timeout 200