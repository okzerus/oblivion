#scoreboard setup
scoreboard objectives add health_current dummy
scoreboard objectives add health_old dummy
scoreboard objectives add damage_taken dummy
scoreboard objectives add fire_damage_total dummy
scoreboard objectives add fire_damage_total_old dummy
scoreboard objectives add fire_damage_countdown dummy

#Testing and Debugging
scoreboard objectives setdisplay sidebar fire_damage_total



#Setup finished
execute at @a run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 1 1