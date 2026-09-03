execute align xyz run summon marker ~.5 ~.1 ~.5 {Tags:["obl.instant_spawner"]}
particle minecraft:happy_villager ~ ~.1 ~ 0.2 0.2 0.2 0 10
playsound minecraft:block.end_portal_frame.fill block @a ~ ~-1 ~ 1.5 1.3
tellraw @p[gamemode=creative] [{"text":"> Инстаспавнер создан; Не забудьте указать тип моба через тег.","color":"#CA2C5A"},{"text":"\n(напр. ","color":"#CA2C5A"},{"text":"[obl.spawner.vindicator]","color":"gold"},{"text":")","color":"#CA2C5A"}]
