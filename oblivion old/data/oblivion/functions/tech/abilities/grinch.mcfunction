execute at @s unless block ~ ~2 ~ air run playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 10 0.1
execute at @s unless block ~ ~2 ~ air run tp ~ ~10 ~
scoreboard players add @s abilities 1
scoreboard players set grinchalive oblivion 1

execute if score @s abilities matches 20..30 at @s run function oblivion:tech/abilities/grinchabilities/abilityone
execute if score @s abilities matches 40 at @s run function oblivion:tech/abilities/grinchabilities/abilitytwo
execute if score @s abilities matches 60 at @s run function oblivion:tech/abilities/grinchabilities/abilitythree

execute if score @s abilities matches 1 at @s run item replace entity @s weapon.mainhand with minecraft:iron_sword{CustomModelData:3001,AttributeModifiers:[{AttributeName:"generic.attack_damage",Amount:4,Slot:mainhand,Name:"generic.attack_damage",UUID:[I;-1211126,6786,20208,-13572]},{AttributeName:"generic.attack_speed",Amount:-2.4,Slot:mainhand,Name:"generic.attack_speed",UUID:[I;-1211126,6886,20208,-13772]}],display:{Name:'[{"text":"Ледяной меч","italic":false,"color":"aqua"}]',Lore:['[{"text":"Обледенение I","italic":false,"color":"dark_purple"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Когда в ведущей руке:","italic":false,"color":"gray"},{"text":"","italic":false,"color":"dark_purple"}]','[{"text":" 6.5 Урон","italic":false,"color":"dark_green"}]','[{"text":" 1.6 Скорость атаки","italic":false,"color":"dark_green"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Требуемый уровень: 5","italic":false,"color":"gold"}]']},obl.difficulty:5b,HideFlags:2}
execute if score @s abilities matches 1 at @s run item replace entity @s weapon.offhand with minecraft:air
execute if score @s abilities matches 1 at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.3
execute if score @s abilities matches 31 at @s run item replace entity @s weapon.mainhand with minecraft:bow{CustomModelData:1003,display:{Name:'[{"text":"Ледяной лук","italic":false,"color":"aqua"}]',Lore:['[{"text":"Выстрелы в цель со 100% шансом будут накладывать","italic":false,"color":"gray"}]','[{"text":"эффект замедления, имеющий случайный уровень от 2 до 5.","italic":false,"color":"gray"}]','[{"text":"","italic":false,"color":"dark_purple"}]','[{"text":"Требуемый уровень: 5","italic":false,"color":"gold"}]']},obl.difficulty:5b}
execute if score @s abilities matches 31 at @s run item replace entity @s weapon.offhand with minecraft:air
execute if score @s abilities matches 31 at @s run playsound minecraft:item.armor.equip_iron master @a ~ ~ ~ 1 0.3

# Bossbar
execute at @s run bossbar set oblivion:grinch players @a[distance=..50]
execute store result bossbar oblivion:grinch value run data get entity @e[tag=grinch,limit=1] Health

execute if score @s abilities matches 1 at @s at @a[distance=..50] run summon evoker_fangs
execute if score @s abilities matches 11 at @s at @a[distance=..50] run summon evoker_fangs
execute if score @s abilities matches 21 at @s at @a[distance=..50] run summon evoker_fangs
execute if score @s abilities matches 31 at @s at @a[distance=..50] run summon evoker_fangs
execute if score @s abilities matches 41 at @s at @a[distance=..50] run summon evoker_fangs
execute if score @s abilities matches 51 at @s at @a[distance=..50] run summon evoker_fangs

execute at @s at @a[distance=..4] run summon evoker_fangs