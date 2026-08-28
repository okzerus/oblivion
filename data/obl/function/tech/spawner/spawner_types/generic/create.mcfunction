execute at @s align xyz run summon marker ~0.5 ~-0.5 ~0.5 {Tags:[obl.spawner, obl.spawner.generic,obl.spawner.init,obl.spawner.mob.unset]}
tellraw @p "Не забудьте добавить тег моба из спавнера, например: \"obl.spawner.zombie\""
setblock ~ ~-1 ~ spawner replace