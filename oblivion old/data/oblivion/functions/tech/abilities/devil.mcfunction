execute at @s unless block ~ ~3 ~ air run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 0.1
execute at @s unless block ~ ~3 ~ air run setblock ~ ~9 ~ obsidian
execute at @s unless block ~ ~3 ~ air run tp ~ ~10 ~
scoreboard players add @s abilities 1
scoreboard players set devilalive oblivion 1

execute as @e[type=item,distance=..100,tag=!obl.itemprotected,tag=!nethermothronegg] run data merge entity @s {Invulnerable:1b,Tags:["obl.itemprotected"]}

execute as @e[tag=obl.devilarrow] at @s if entity @e[tag=devil,distance=20..] run kill @s
execute at @s as @a[distance=..80,tag=!inbattlewithdevil,scores={obl.difficulty=8..},tag=!obl.plbossdeath] run function oblivion:tech/abilities/devilabilities/joindevil
execute at @s as @a[distance=81..,tag=inbattlewithdevil] run function oblivion:tech/abilities/devilabilities/leavedevil

execute as @e[tag=obl.devilbomb] at @s if entity @a[distance=..3,tag=inbattlewithdevil] run function oblivion:tech/abilities/devilabilities/devilbombexplode
execute if score @s abilities matches 0..18 at @s run execute as @e[type=armor_stand,tag=obl.devilbomb,sort=random,limit=1] at @s run function oblivion:tech/abilities/devilabilities/devilbombexplode

execute as @a[distance=..2,tag=inbattlewithdevil] at @s run function oblivion:tech/abilities/devilabilities/playernear


execute if score @s[tag=phase1] abilities matches 20..70 at @s run function oblivion:tech/abilities/devilabilities/1abilityone
execute if score @s[tag=phase1] abilities matches 120..170 at @s run function oblivion:tech/abilities/devilabilities/1abilitytwo
execute if score @s[tag=phase1] abilities matches 350..380 at @s run function oblivion:tech/abilities/devilabilities/1abilitythree

execute if score @s[tag=phase2] abilities matches 20..150 at @s run function oblivion:tech/abilities/devilabilities/2abilityone
execute if score @s[tag=phase2] abilities matches 240..250 at @s run function oblivion:tech/abilities/devilabilities/2abilitytwo
execute if score @s[tag=phase2] abilities matches 300..430 at @s run function oblivion:tech/abilities/devilabilities/2abilitythree

execute if score @s[tag=phase3] abilities matches 20..150 at @s run function oblivion:tech/abilities/devilabilities/3abilityone
execute if score @s[tag=phase3] abilities matches 200..370 at @s run function oblivion:tech/abilities/devilabilities/3abilitytwo
execute if score @s[tag=phase3] abilities matches 399.. if score @s obl.devilcube matches 3.. at @s run scoreboard players set @s abilities 151
execute if score @s[tag=phase3] abilities matches 400..472 at @s run function oblivion:tech/abilities/devilabilities/3abilitythree

execute as @e[tag=obl.giantdevilcube] at @s if entity @e[tag=devil,distance=70..] run execute at @e[tag=devil] run tp @s ~ ~50 ~
execute as @e[tag=obl.giantdevilcube] at @s run function oblivion:tech/abilities/devilabilities/giantdevilcube

execute if score @s abilities matches 1 at @s run item replace entity @s weapon.mainhand with minecraft:netherite_sword{CustomModelData:4006,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:11,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-1211024,25038,277,-50076]},{AttributeName:"generic.max_health",Amount:4,Slot:mainhand,Name:"generic.max_health",UUID:[I;-1211024,25138,277,-50276]},{AttributeName:"generic.attack_speed",Amount:-2.4,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-1211024,25238,277,-50476]}],display:{Name:'[{"text":"Проклятый меч","italic":false,"color":"red"}]',Lore:['[{"text":"","italic":false}]','[{"text":"Когда в ведущей руке:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":" 11 Урон","italic":false,"color":"dark_green"}]','[{"text":" 1.6 Скорость атаки","italic":false,"color":"dark_green"}]','[{"text":" 4 Максимального здоровья","italic":false,"color":"dark_green"}]','[{"text":" При ударе с некоторым шансом может наложить","italic":false,"color":"dark_green"}]','[{"text":"абсолютно любой существующий дебафф","italic":false,"color":"dark_green"}]','[{"text":"на 10 секунд 2 уровня","italic":false,"color":"dark_green"}]','[{"text":"","italic":false,"color":"white"}]','[{"text":"Требуемый уровень: 9","italic":false,"color":"gold"}]']},obl.difficulty:9b,HideFlags:2,cursedword:1b,Enchantments:[{id:unbreaking,lvl:3},{id:knockback,lvl:3},{id:sharpness,lvl:8}]}
execute if score @s abilities matches 1 at @s run item replace entity @s weapon.offhand with minecraft:air
execute if score @s abilities matches 1 at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.3
execute if score @s abilities matches 251 at @s run item replace entity @s weapon.mainhand with minecraft:bow{CustomModelData:1002,display:{Name:'[{"text":"Лук Адских Глубин","italic":false,"color":"dark_red"}]',Lore:['[{"text":"При попадании в цель с маленьким шансом","italic":false,"color":"gray"}]','[{"text":"может телепортировать её под землю на 10 блоков","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"white"}]','[{"text":"Требуемый уровень: 9","italic":false,"color":"gold"}]']},obl.difficulty:9b,Enchantments:[{id:unbreaking,lvl:3},{id:infinity,lvl:1},{id:power,lvl:7}]}
execute if score @s abilities matches 251 at @s run item replace entity @s weapon.offhand with minecraft:air
execute if score @s abilities matches 251 at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.3

# Bossbar
execute at @s run bossbar set oblivion:devil players @a[distance=..50]
execute store result bossbar oblivion:devil value run data get entity @s Health



# Phases

execute store result score @s devilhealth run data get entity @s Health

execute if score @s devilhealth matches 151..400 if entity @s[tag=!phase2,tag=!phase3] run function oblivion:tech/abilities/devilabilities/movetosecondphase
execute if score @s devilhealth matches ..150 if entity @s[tag=!phase3] run function oblivion:tech/abilities/devilabilities/movetothirdphase

execute at @s unless entity @a[distance=..81,tag=inbattlewithdevil] run function oblivion:tech/abilities/devilabilities/everyoneleft

execute if score @s abilities matches 500.. run scoreboard players set @s abilities 0

# Boost

scoreboard players set @s playercount 0
execute at @a[distance=..50] run scoreboard players add @s playercount 1

execute if score @s playercount matches 3 run effect give @s strength 10 1 true
execute if score @s playercount matches 4 run effect give @s resistance 10 0 true
execute if score @s playercount matches 4 run effect give @s strength 10 2 true
execute if score @s playercount matches 5 run effect give @s resistance 10 1 true
execute if score @s playercount matches 5 run effect give @s strength 10 3 true