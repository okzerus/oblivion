playsound minecraft:block.respawn_anchor.set_spawn master @a[distance=..16] ~ ~ ~ 1 1.2
playsound minecraft:item.axe.wax_off master @a[distance=..16] ~ ~ ~ 1 0.6
playsound minecraft:block.bell.resonate master @a[distance=..16] ~ ~ ~ 1 0.8
data modify block ~ ~ ~ SpawnCount set value 8
data modify block ~ ~ ~ MaxNearbyEntities set value 8
data modify block ~ ~ ~ Delay set value 210
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Спавнер усилен до максимума!",color:"#b61207"},background:905969664,billboard:"center",Tags:["obl.announce.spawner_upgrade","obl.announcement_marker"]}
scoreboard players set @s obl.spawner.difficulty 3