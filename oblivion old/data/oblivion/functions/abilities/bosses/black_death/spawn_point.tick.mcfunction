execute unless entity @s[tag=obl.summoning] unless block ~ ~-1 ~ reinforced_deepslate if entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.trigger
execute unless entity @s[tag=obl.summoning] unless block ~ ~1 ~ reinforced_deepslate if entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.trigger
execute unless entity @s[tag=obl.summoning] unless block ~ ~ ~-1 reinforced_deepslate if entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.trigger
execute unless entity @s[tag=obl.summoning] unless block ~ ~ ~1 reinforced_deepslate if entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.trigger
execute unless entity @s[tag=obl.summoning] unless block ~-1 ~ ~ reinforced_deepslate if entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.trigger
execute unless entity @s[tag=obl.summoning] unless block ~1 ~ ~ reinforced_deepslate if entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.trigger

execute unless entity @s[tag=obl.summoning] unless block ~ ~-1 ~ reinforced_deepslate unless entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.fail
execute unless entity @s[tag=obl.summoning] unless block ~ ~1 ~ reinforced_deepslate unless entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.fail
execute unless entity @s[tag=obl.summoning] unless block ~ ~ ~-1 reinforced_deepslate unless entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.fail
execute unless entity @s[tag=obl.summoning] unless block ~ ~ ~1 reinforced_deepslate unless entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.fail
execute unless entity @s[tag=obl.summoning] unless block ~-1 ~ ~ reinforced_deepslate unless entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.fail
execute unless entity @s[tag=obl.summoning] unless block ~1 ~ ~ reinforced_deepslate unless entity @a[distance=..30,scores={obl.difficulty=2..}] run function oblivion:abilities/bosses/black_death/spawn_point.fail

execute if entity @s[tag=obl.summoning] run function oblivion:abilities/bosses/black_death/transitions/summoning