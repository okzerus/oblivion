execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ sea_lantern unless block ~ ~-1 ~ sea_lantern run setblock ~ ~ ~ sea_lantern destroy

execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ sea_lantern run summon marker ~ ~ ~ {Tags:["obl.ocean_ruin.shield"]}
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ sea_lantern run particle minecraft:bubble ~ ~ ~ 0.3 0.3 0.3 0 30
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ sea_lantern run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 30
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ sea_lantern run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1.5 1.3

execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ sea_lantern run summon marker ~ ~-1 ~ {Tags:["obl.ocean_ruin.shield"]}
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ sea_lantern run particle minecraft:bubble ~ ~-1 ~ 0.3 0.3 0.3 0 30
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ sea_lantern run particle minecraft:enchanted_hit ~ ~ ~ 0 0 0 1 30
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ sea_lantern run playsound minecraft:block.beacon.activate block @a ~ ~-1 ~ 1.5 1.3