tag @s add obl.altar.crafting
tag @s add obl.altar.preparing
scoreboard players set @s obl.altar.stability 3
scoreboard players set @s obl.altar.recipe_id 5

tag @e[type=item,tag=obl.item.glowing_receiver,limit=1,sort=nearest,distance=...3] add obl.altar.item.using
tag @e[type=item,tag=obl.item.netherite,limit=1,sort=nearest,distance=...3] add obl.altar.item.using

execute as @e[type=item,tag=obl.altar.item,tag=!obl.altar.item.using,distance=...3] at @s run function oblivion:tech/altars/recipes/throw_out
kill @e[type=armor_stand,tag=obl.altar.invalid_recipe_announcement,limit=1,sort=nearest,distance=..5]