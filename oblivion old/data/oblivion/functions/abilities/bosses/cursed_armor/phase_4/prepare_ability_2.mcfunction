particle minecraft:enchant ~ ~.5 ~ 0 0 0 2 100
playsound minecraft:block.beacon.activate hostile @a ~ ~ ~ 3 1.2
playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 3 1.2
playsound minecraft:entity.ender_dragon.ambient hostile @a ~ ~ ~ 3 1.2
particle minecraft:dust 0.3 1 0.3 1 ~ ~.5 ~ 1 1 1 0 30

summon minecraft:armor_stand ~ ~ ~ {Invulnerable:1b,Invisible:1b,Silent:1b,Tags:["obl.cursed_armor.p4a2.preparing"],DisabledSlots:4144959}
schedule function oblivion:abilities/bosses/cursed_armor/phase_4/ability_2 30t