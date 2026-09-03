gamerule showDeathMessages false
function oblivion:rng

execute if predicate oblivion:items/hold.totem_of_dying run item replace entity @s weapon.mainhand with air
execute if predicate oblivion:items/hold.totem_of_dying.off run item replace entity @s weapon.offhand with air

tellraw @a ["",{"selector":"@s"},{"text":" \u0441\u043b\u0438\u0448\u043a\u043e\u043c \u0441\u0438\u043b\u044c\u043d\u043e \u043f\u043e\u0432\u0435\u0440\u0438\u043b \u0432 \u0441\u0435\u0431\u044f"}]
effect give @s minecraft:instant_damage 1 100 true
execute unless score randomizer obl.rng matches 81..100 run loot spawn ~ ~ ~ loot oblivion:items/other/totem_of_dying

schedule function oblivion:showdeathmessages_true 1t