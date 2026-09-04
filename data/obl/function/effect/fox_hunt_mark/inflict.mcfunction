tag @s add obl.effect.fox_hunt.mark

#execute anchored eyes positioned ^ ^ ^ run summon text_display ~ ~1 ~ {text:"Ожог",Invulnerable:1b,NoGravity:1b,Tags:["obl.announce.scorch","obl.announcement_marker"],CustomName:[{"text":"Ожог!","color":"#eb5721"}],CustomNameVisible:1b}
execute anchored eyes positioned ^ ^ ^ run summon minecraft:text_display ~ ~.5 ~ {text:{text:"SEGNATO!",color:"#f56d3c"},background:905969664,billboard:"center",Tags:["obl.announce.fox_hunt_mark","obl.announcement_marker"]}

title @s times 0 30 10
title @s title {"text":"SEGNATO!","italic":true,"color":"#eb5721"}

playsound entity.warden.attack_impact hostile @a ~ ~ ~ 1 1.2
playsound entity.wolf.growl hostile @a ~ ~ ~ 1 1.7

particle lava ~ ~0.25 ~ 0.2 0.2 0.2 0 30
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30
particle large_smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 30
