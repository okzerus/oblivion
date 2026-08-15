### S C O R E S

## Operations
scoreboard objectives add obl.const dummy
scoreboard players set #zero obl.const 0
scoreboard players set #two obl.const 2
## Misc
scoreboard objectives add obl dummy
scoreboard objectives add obl.health dummy
scoreboard objectives add obl.health_old dummy
scoreboard objectives add obl.damage_taken dummy
scoreboard objectives add obl.holding_rmb dummy
scoreboard objectives add obl.effect.buff.scorchfield.count dummy
scoreboard objectives add obl.effect.buff.scorchfield.decay dummy
scoreboard objectives add obl.effect.debuff.scorch.tick dummy
scoreboard objectives add obl.effect.debuff.scorch.strength dummy
scoreboard objectives add obl.effect.debuff.scorch.interval dummy




scoreboard objectives setdisplay sidebar obl.effect.buff.scorchfield.count



### E N D
execute unless score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully installed", "color": "#203ee6","bold": true}
execute if score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully reloaded", "color": "#203ee6","bold": true}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set first_load obl 1