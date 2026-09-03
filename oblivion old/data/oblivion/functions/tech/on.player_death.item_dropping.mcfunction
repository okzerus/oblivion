data modify storage oblivion:temp nbt set from entity @s

setblock 7 -64 7 yellow_shulker_box
data modify block 7 -64 7 Items set from storage oblivion:temp nbt.Inventory
data remove block 7 -64 7 Items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
data remove block 7 -64 7 Items[{tag:{obl.item.pendant_of_memory:1b}}]
loot spawn ~ ~ ~ mine 7 -64 7 air{drop_contents:1b}

loot replace block 7 -64 7 container.0 27 loot empty
item replace block 7 -64 7 container.0 from entity @s container.27
item replace block 7 -64 7 container.1 from entity @s container.28
item replace block 7 -64 7 container.2 from entity @s container.29
item replace block 7 -64 7 container.3 from entity @s container.30
item replace block 7 -64 7 container.4 from entity @s container.31
item replace block 7 -64 7 container.5 from entity @s container.32
item replace block 7 -64 7 container.6 from entity @s container.33
item replace block 7 -64 7 container.7 from entity @s container.34
item replace block 7 -64 7 container.8 from entity @s container.35
item replace block 7 -64 7 container.9 from entity @s weapon.offhand
item replace block 7 -64 7 container.10 from entity @s armor.head
item replace block 7 -64 7 container.11 from entity @s armor.chest
item replace block 7 -64 7 container.12 from entity @s armor.legs
item replace block 7 -64 7 container.13 from entity @s armor.feet
data remove block 7 -64 7 Items[{tag:{Enchantments:[{id:"minecraft:vanishing_curse"}]}}]
data remove block 7 -64 7 Items[{tag:{obl.item.pendant_of_memory:1b}}]
loot spawn ~ ~ ~ mine 7 -64 7 air{drop_contents:1b}

loot replace entity @s container.0 36 loot empty
item replace entity @s armor.head with air
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air
item replace entity @s weapon.offhand with air

scoreboard players set 2 oblivion 2
scoreboard players operation #xp oblivion = @s obl.player_xp
scoreboard players operation #xp oblivion %= 2 oblivion
execute if score #xp oblivion matches 1.. summon minecraft:experience_orb store result entity @s Value int 1 run scoreboard players get #xp oblivion
xp set @s 0 levels
xp set @s 0 points

execute if entity @s[tag=obl.temp.rusty_pendant] as @e[type=item,distance=..3] run data merge entity @s {Age:-32768s}
execute if entity @s[tag=obl.temp.rusty_pendant] run tag @e[type=item,distance=..3] add obl.item.infinite_age
execute if entity @s[tag=obl.temp.pendant] as @e[type=item,distance=..3] run data merge entity @s {Age:-32768s,Invulnerable:1b}
execute if entity @s[tag=obl.temp.pendant] run tag @e[type=item,distance=..3] add obl.item.infinite_age
execute if entity @s[tag=obl.temp.pendant] run tag @e[type=item,distance=..3] add obl.item.invulnerable
loot give @s[tag=obl.temp.pendant] loot oblivion:items/other/pendant_of_memory

setblock 7 -64 7 air

