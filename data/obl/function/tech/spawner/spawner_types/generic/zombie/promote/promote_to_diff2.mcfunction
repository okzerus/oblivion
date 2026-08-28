playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..16] ~ ~ ~ 1 1.2
playsound minecraft:item.axe.wax_off master @a[distance=..16] ~ ~ ~ 1 0.6
data modify block ~ ~ ~ SpawnCount set value 6
data modify block ~ ~ ~ MaxNearbyEntities set value 6
data modify block ~ ~ ~ Delay set value 230
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Спавнер усилен!",color:"#19ddeb"},background:905969664,billboard:"center",Tags:["obl.announce.spawner_upgrade","obl.announcement_marker"]}
scoreboard players set @s obl.spawner.difficulty 2