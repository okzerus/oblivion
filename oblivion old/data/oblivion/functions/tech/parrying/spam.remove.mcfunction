execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 2
execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.8
execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run playsound minecraft:entity.experience_orb.pickup player @s ~ ~ ~ 1 1.6
execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run playsound minecraft:item.shield.block player @s ~ ~ ~ 1 2

execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run title @s title ""
execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run title @s subtitle {"text":"МОЖНО ПАРИРОВАТЬ!","italic":true,"color":"green"}
execute if entity @s[tag=obl.parry_spam_announced.1,scores={obl.parry.cd=..0}] run title @s times 0 3 0

tag @s remove obl.parry_spam_announced.1
tag @s remove obl.parry_spam_announced.2
tag @s remove obl.parry_spam_announced.3
tag @s remove obl.parry_spam_announced.4
scoreboard players set @s obl.parry.spam_cd -1