tag @s add obl.effect.scorch
scoreboard players set @s obl.effect.scorch.strength 1

#execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~1 ~ {text:"Ожог",Invulnerable:1b,NoGravity:1b,Tags:["obl.announce.scorch","obl.announcement_marker"],CustomName:[{"text":"Ожог!","color":"#eb5721"}],CustomNameVisible:1b}
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"Ожог!",color:"#eb5721"},background:905969664,billboard:"center",Tags:["obl.announce.scorch","obl.announcement_marker"]}

title @s times 0 30 10
title @s title {"text":"ОЖОГ!","italic":true,"color":"#eb5721"}
title @s subtitle {"text":"ПОТЕРЯ ЗДОРОВЬЯ!","italic":true,"color":"#c73916"}

playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 0.7
playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.7

particle lava ~ ~0.25 ~ 0.2 0.2 0.2 0 30
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30
particle large_smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30



#execute if entity @s[tag=obl.temp.took_damage] run scoreboard players operation @a[distance=..15] fire_damage_total += @s damage_taken
#execute as @a at @s run function obl:scorchfield/check_fire_damage
#execute as @a at @s run scoreboard players operation @s fire_damage_total_old = @s fire_damage_total 
#execute as @a at @s run function obl:scorchfield/scorchfield_countdown
#execute as @a at @s run function obl:scorchfield/scorchfield_visual
