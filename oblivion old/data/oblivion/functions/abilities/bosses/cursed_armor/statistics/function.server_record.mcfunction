data modify entity @s text set value '{"selector":"@p"}'
data modify storage oblivion:server cursed_armor.best set from entity @s text

schedule function oblivion:abilities/bosses/cursed_armor/statistics/announce.server_record 3s

kill @s