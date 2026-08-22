execute at @s align xyz run summon marker ~0.5 ~-0.5 ~0.5 {Tags:[obl.spawner, obl.spawner.generic,obl.spawner.init]}
setblock ~ ~-1 ~ spawner replace
#{SpawnData:{entity:{id:marker,Tags:[obl.spawner.mob_marker]}}}