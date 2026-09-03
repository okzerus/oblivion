tag @s add obl.altar.crafting
tag @s add obl.altar.preparing
scoreboard players set @s obl.altar.stability 1
scoreboard players set @s obl.altar.recipe_id 2

tag @e[type=item,tag=obl.item.paper,limit=1,sort=nearest,distance=...3] add obl.altar.item.using
tag @e[type=item,tag=obl.item.armor,tag=obl.item.armor.unusual,limit=1,sort=nearest,distance=...3] add obl.altar.item.using

execute as @e[type=item,tag=obl.altar.item,tag=!obl.altar.item.using,distance=...3] at @s run function oblivion:tech/altars/recipes/throw_out
kill @e[type=armor_stand,tag=obl.altar.invalid_recipe_announcement,limit=1,sort=nearest,distance=..5]