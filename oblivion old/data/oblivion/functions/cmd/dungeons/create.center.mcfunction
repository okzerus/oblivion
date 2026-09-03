execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~ ~ reinforced_deepslate unless block ~ ~-1 ~ reinforced_deepslate run setblock ~ ~ ~ reinforced_deepslate destroy

execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ reinforced_deepslate run summon marker ~ ~ ~ {Tags:["obl.dungeon.center"]}
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ reinforced_deepslate run particle minecraft:flame ~ ~ ~ 0.3 0.3 0.3 0 30
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ reinforced_deepslate run particle minecraft:enchant ~ ~.5 ~ 0 0 0 1 30
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ reinforced_deepslate run playsound minecraft:block.beacon.activate block @a ~ ~ ~ 1.5 1.3
execute align xyz positioned ~.5 ~.5 ~.5 unless block ~ ~-1 ~ reinforced_deepslate run playsound minecraft:entity.evoker.cast_spell block @a ~ ~ ~ 1.5 1.8

execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ reinforced_deepslate run summon marker ~ ~-1 ~ {Tags:["obl.dungeon.center"]}
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ reinforced_deepslate run particle minecraft:flame ~ ~-1 ~ 0.3 0.3 0.3 0 30
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ reinforced_deepslate run particle minecraft:enchant ~ ~-.5 ~ 0 0 0 1 30
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ reinforced_deepslate run playsound minecraft:block.beacon.activate block @a ~ ~-1 ~ 1.5 1.3
execute align xyz positioned ~.5 ~.5 ~.5 if block ~ ~-1 ~ reinforced_deepslate run playsound minecraft:entity.evoker.cast_spelln block @a ~ ~-1 ~ 1.5 1.8