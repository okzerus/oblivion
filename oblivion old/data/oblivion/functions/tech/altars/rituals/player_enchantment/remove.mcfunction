execute if entity @s[tag=obl.bad_enchantment] run function oblivion:tech/altars/rituals/player_enchantment/remove_enchant.bad
execute if entity @s[tag=obl.good_enchantment] run function oblivion:tech/altars/rituals/player_enchantment/remove_enchant.good

playsound minecraft:block.fire.extinguish player @s ~ ~ ~ 1 0.1
particle minecraft:enchant ~ ~1 ~ 0.3 0.6 0.3 0 30 normal
tellraw @s ["",{"text":"\n"},{"text":"Вы снова можете попытать свою удачу на Алтаре Забвения!","italic":true,"color":"#652E78"},{"text":"\n "}]