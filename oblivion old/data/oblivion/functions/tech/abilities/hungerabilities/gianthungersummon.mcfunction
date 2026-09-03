# Randomizer

function oblivion:rng

playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 2 0.1
playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 0.1
playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 0.1
playsound minecraft:entity.player.burp master @a ~ ~ ~ 2 0.1
particle block terracotta ^ ^1.5 ^0.3 0.2 0.2 0.2 0 200

execute if score randomizer obl.rng matches 1..15 run summon husk ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 1..15 run summon husk ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 1..15 run summon husk ^ ^1 ^0.3 {isBaby:1b,DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}

execute if score randomizer obl.rng matches 16..30 run summon skeleton ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 16..30 run summon skeleton ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 16..30 run summon skeleton ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}

execute if score randomizer obl.rng matches 31..45 run summon spider ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 31..45 run summon spider ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 31..45 run summon cave_spider ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}

execute if score randomizer obl.rng matches 46..60 run summon silverfish ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 46..60 run summon silverfish ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 46..60 run summon silverfish ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 46..60 run summon creeper ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}

execute if score randomizer obl.rng matches 61..75 run summon phantom ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 61..75 run summon phantom ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 61..75 run summon phantom ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}

execute if score randomizer obl.rng matches 76..90 run summon zoglin ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}

execute if score randomizer obl.rng matches 91..100 run summon witch ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 91..100 run summon witch ^ ^1 ^0.3 {DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}
execute if score randomizer obl.rng matches 91..100 run summon slime ^ ^1 ^0.3 {Size:3,DeathLootTable:"minecraft:empty",Tags:["obl.dontreplace"],ActiveEffects:[{Id:11,Duration:40,Amplifier:5,ShowParticles:0b}]}