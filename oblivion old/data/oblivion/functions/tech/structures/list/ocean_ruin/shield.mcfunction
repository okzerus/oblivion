scoreboard players operation #id.temp obl.id = @s obl.id
execute align xyz run particle minecraft:enchanted_hit ~.5 ~.5 ~.5 0.3 0.3 0.3 0.03 3 normal
execute align xyz run particle minecraft:bubble_column_up ~.5 ~.5 ~.5 0.5 0.5 0.5 0 1 normal
execute align xyz run particle minecraft:enchant ~.5 ~.5 ~.5 0.1 0.1 0.1 1 1 normal
execute if entity @s[tag=obl.ocean_ruin.linked] facing entity @e[type=guardian,tag=obl.ruin_guardian,predicate=oblivion:matching_score,limit=1] eyes positioned ^ ^ ^.5 run function oblivion:tech/raycast/ocean_ruin
execute unless block ~ ~ ~ sea_lantern run function oblivion:tech/structures/list/ocean_ruin/shield.destroy
execute if entity @e[type=trident,distance=..1.5,nbt={inGround:1b,inBlockState:{Name:"minecraft:sea_lantern"}}] run function oblivion:tech/structures/list/ocean_ruin/shield.destroy