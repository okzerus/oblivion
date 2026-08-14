### S C O R E S

scoreboard objectives add obl dummy
scoreboard objectives add obl.const dummy
scoreboard players set 0 obl.const 0
scoreboard objectives add obl.hp_current dummy
scoreboard objectives add obl.hp_old dummy
#scoreboard objectives add obl.weapon.cod.

#scorchfield_damage_taken dummy
#scoreboard objectives add fire_damage_total dummy
#scoreboard objectives add fire_damage_total_old dummy
#scoreboard objectives add fire_damage_countdown dummy




scoreboard objectives setdisplay sidebar fire_damage_total



### E N D
execute unless score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully installed", "color": "#203ee6","bold": true}
execute if score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully reloaded", "color": "#203ee6","bold": true}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set first_load obl 1