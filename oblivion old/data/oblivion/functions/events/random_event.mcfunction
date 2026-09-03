###   R A N D O M I Z E R
function oblivion:rng

###   B A D   E V E N T S   ( 1 0 % )
execute if score randomizer obl.rng matches 1..10 if entity @a[scores={obl.difficulty=5..}] run function oblivion:events/start_solar_eclipse
execute if score randomizer obl.rng matches 11..20 if entity @a[scores={obl.difficulty=5..}] run function oblivion:events/blood_moon/selected
execute if score randomizer obl.rng matches 21..30 if entity @a[scores={obl.difficulty=5..}] run function oblivion:events/gravigeddon/selected
execute if score randomizer obl.rng matches 31..40 if entity @a[scores={obl.difficulty=5..}] if score rl.dec25_jan1 oblivion matches 1 run function oblivion:events/xmas_night/selected

###   G O O D   E V E N T S   ( 1 5 % )
execute if score randomizer obl.rng matches 41..55 run function oblivion:events/pearl_moon/selected
execute if score randomizer obl.rng matches 56..70 run function oblivion:events/start_great_day

###   A N N O U N C E M E N T   I F   N O   L E V E L   5 +
execute if score randomizer obl.rng matches 1..40 unless entity @a[scores={obl.difficulty=5..}] run function oblivion:tech/difficulty/announceaboutdifficulty