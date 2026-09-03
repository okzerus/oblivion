execute align xyz run particle minecraft:enchanted_hit ~.5 ~.5 ~.5 0.3 0.3 0.3 1.2 75 normal
execute align xyz run particle minecraft:explosion ~.5 ~.5 ~.5 0.5 0.5 0.5 0 5 normal
execute align xyz run playsound minecraft:block.beacon.deactivate hostile @a ~.5 ~.5 ~.5 1 1.7
execute align xyz run playsound minecraft:entity.generic.explode hostile @a ~.5 ~.5 ~.5 1 1.7
setblock ~ ~ ~ water destroy
kill @s[type=marker]