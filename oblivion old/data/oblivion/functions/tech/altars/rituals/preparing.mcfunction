scoreboard players add @s obl.altar.preparing 1

execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 1 unless entity @e[type=item,distance=...3,tag=obl.item.unusualifier] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 1 unless entity @e[type=item,distance=...3,tag=obl.item.armor] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 2 unless entity @e[type=item,distance=...3,tag=obl.item.paper] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 2 unless entity @e[type=item,distance=...3,tag=obl.item.armor,tag=obl.item.armor.unusual] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 3 unless entity @e[type=item,distance=...3,tag=obl.item.summoner] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 4 unless entity @e[type=item,distance=...3,tag=obl.item.broken_glowing_receiver] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 5 unless entity @e[type=item,distance=...3,tag=obl.item.glowing_receiver] run function oblivion:tech/altars/preparing_denied
execute if score @s[tag=obl.altar.crafting] obl.altar.recipe_id matches 5 unless entity @e[type=item,distance=...3,tag=obl.item.netherite] run function oblivion:tech/altars/preparing_denied

execute if entity @s[tag=obl.altar.ritual,tag=obl.altar.ritual.player_enchanting] unless entity @a[distance=...5,tag=obl.player_enchanting.preparing] run function oblivion:tech/altars/preparing_denied

execute if score @s obl.altar.preparing matches 1 if score @s obl.altar.stability matches 1 run summon armor_stand ~ ~2 ~ {Tags:["obl.altar.ritual_stability"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Silent:1b,CustomName:'[{"text":"Стабилен","color":"#652e78"}]',CustomNameVisible:1b}
execute if score @s obl.altar.preparing matches 1 if score @s obl.altar.stability matches 2 run summon armor_stand ~ ~2 ~ {Tags:["obl.altar.ritual_stability"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Silent:1b,CustomName:'[{"text":"Нестабилен","color":"#652e78"}]',CustomNameVisible:1b}
execute if score @s obl.altar.preparing matches 1 if score @s obl.altar.stability matches 3 run summon armor_stand ~ ~2 ~ {Tags:["obl.altar.ritual_stability"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Silent:1b,CustomName:'[{"text":"Чрезвычайно нестабилен","color":"#652e78"}]',CustomNameVisible:1b}
execute if score @s obl.altar.preparing matches 1 run summon armor_stand ~ ~1.6 ~ {Tags:["obl.altar.ritual_timer"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Marker:1b,Silent:1b,CustomName:'[{"text":"5","color":"#652e78"}]',CustomNameVisible:1b}
execute if score @s obl.altar.preparing matches 20 run data merge entity @e[type=armor_stand,sort=nearest,limit=1,distance=..10,tag=obl.altar.ritual_timer] {CustomName:'[{"text":"4","color":"#652e78"}]'}
execute if score @s obl.altar.preparing matches 40 run data merge entity @e[type=armor_stand,sort=nearest,limit=1,distance=..10,tag=obl.altar.ritual_timer] {CustomName:'[{"text":"3","color":"#652e78"}]'}
execute if score @s obl.altar.preparing matches 60 run data merge entity @e[type=armor_stand,sort=nearest,limit=1,distance=..10,tag=obl.altar.ritual_timer] {CustomName:'[{"text":"2","color":"#652e78"}]'}
execute if score @s obl.altar.preparing matches 80 run data merge entity @e[type=armor_stand,sort=nearest,limit=1,distance=..10,tag=obl.altar.ritual_timer] {CustomName:'[{"text":"1","color":"#652e78"}]'}

execute if score @s obl.altar.preparing matches 100.. run function oblivion:tech/altars/rituals/start