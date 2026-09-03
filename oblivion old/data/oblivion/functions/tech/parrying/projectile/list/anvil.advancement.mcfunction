advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/falling_anvil

execute if score @s obl.parried_anvil.count matches 50.. run summon firework_rocket ~ ~10 ~ {LifeTime:1,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:1,Flicker:1b,Trail:1b,Colors:[I;8372223],FadeColors:[I;1806769]}]}}}}
execute if score @s obl.parried_anvil.count matches 50.. run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/falling_anvil.fifty
execute if score @s obl.parried_anvil.count matches 50.. run loot spawn ~ ~10 ~ loot oblivion:items/other/flying_anvil
execute if score @s obl.parried_anvil.count matches 50.. run kill @s