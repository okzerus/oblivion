data modify entity @s text set value '{"selector":"@p"}'
data modify storage oblivion:server black_death.best_no_hit set from entity @s text

schedule function oblivion:abilities/bosses/black_death/statistics/announce.no_hit_record 3s

kill @s