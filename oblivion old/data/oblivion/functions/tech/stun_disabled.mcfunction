tag @s remove obl.stunned

playsound minecraft:item.armor.equip_diamond hostile @a ~ ~ ~ 1 0.5
data merge entity @s[type=!player] {NoAI:0b}

title @s times 0 20 10
title @s title ""
function oblivion:rng
execute if score randomizer obl.rng matches 1..20 run title @s subtitle {"text":"WAKE THE FUCK UP, SAMURAI!","italic":true,"color":"#75aca4"}
execute if score randomizer obl.rng matches 21..40 run title @s subtitle {"text":"УТРО ДОБРОЕ!","italic":true,"color":"#75aca4"}
execute if score randomizer obl.rng matches 41..60 run title @s subtitle {"text":"ПРИЁМ? ГОВОРИТ ЗЕМЛЯ!","italic":true,"color":"#75aca4"}
execute if score randomizer obl.rng matches 61..80 run title @s subtitle {"text":"ЕРЖАН, ВСТАВАЙ ЭЙ, САЛАМ АЛЕЙКУМ!","italic":true,"color":"#75aca4"}
execute if score randomizer obl.rng matches 81..100 run title @s subtitle {"text":"TIME TO LET \'ER RIP!","italic":true,"color":"#75aca4"}

effect clear @s[tag=!obl.cursed] minecraft:nausea
effect clear @s[tag=!obl.cursed] minecraft:weakness
effect clear @s[tag=!obl.cursed] minecraft:mining_fatigue

scoreboard players set @s obl.stun 0