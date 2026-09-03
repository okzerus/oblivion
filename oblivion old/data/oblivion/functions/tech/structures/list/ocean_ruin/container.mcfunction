scoreboard players operation #id.temp obl.id = @s obl.id
execute align xyz run particle minecraft:enchanted_hit ~.5 ~.5 ~.5 0.3 0.3 0.3 0.03 3 normal
execute align xyz run particle minecraft:enchant ~.5 ~.5 ~.5 0.1 0.1 0.1 1 1 normal
execute on attacker run title @s actionbar {"text":"Это хранилище защищает ближайший Страж руин","color":"#57C7AF"}
execute on target run title @s actionbar {"text":"Это хранилище защищает ближайший Страж руин","color":"#57C7AF"}
data remove entity @s attack
data remove entity @s interaction
execute if entity @s[tag=obl.ocean_ruin.linked] unless entity @e[type=guardian,tag=obl.ruin_guardian,predicate=oblivion:matching_score] run kill @s