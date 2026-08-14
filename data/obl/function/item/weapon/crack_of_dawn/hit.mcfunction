###   P A R T I C L E S
execute if score @s obl.effect.buff.scorchfield.count matches 1.. run particle minecraft:large_smoke ~ ~.5 ~ 0.3 0.6 0.3 0.05 15 normal
execute if score @s obl.effect.buff.scorchfield.count matches 150.. run particle minecraft:flame ~ ~.5 ~ 0.3 0.6 0.3 0.05 30 normal
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run particle minecraft:lava ~ ~ ~ 0.3 0.1 0.3 0 5 normal



###   S O U N D
execute if score @s obl.effect.buff.scorchfield.count matches 1.. run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.75 1
execute if score @s obl.effect.buff.scorchfield.count matches 150.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.75 1
execute if score @s obl.effect.buff.scorchfield.count matches 150.. run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 0.75 1
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.65 0.8
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.6 0.8
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.55 0.8
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 0.6 1
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 1
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 1


###   F U N C T I O N
## Reset decaying.
scoreboard players set @s obl.effect.buff.scorchfield.decay 300
## Add half of the damage dealt to Scorchfield count.
scoreboard players operation @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] obl.damage_taken /= #two obl.const
scoreboard players operation @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] obl.damage_taken += @s obl.effect.buff.scorchfield.count