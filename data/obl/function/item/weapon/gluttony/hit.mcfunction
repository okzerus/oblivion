###   Ч А С Т И Ц Ы
#execute if score @s obl.effect.scorchfield.count matches 0.. run particle minecraft:large_smoke ~ ~.5 ~ 0.3 0.6 0.3 0.05 15 normal
#execute if score @s obl.effect.scorchfield.count matches 150.. run particle minecraft:flame ~ ~.5 ~ 0.3 0.6 0.3 0.05 30 normal
#execute if score @s obl.effect.scorchfield.count matches 250.. run particle minecraft:lava ~ ~ ~ 0.3 0.1 0.3 0 5 normal



###   З В У К
#execute if score @s obl.effect.scorchfield.count matches 0.. run playsound minecraft:block.fire.extinguish player @a ~ ~ ~ 0.75 1
#execute if score @s obl.effect.scorchfield.count matches 150.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.75 1
#execute if score @s obl.effect.scorchfield.count matches 150.. run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 0.75 1
#execute if score @s obl.effect.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.65 0.8
#execute if score @s obl.effect.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.6 0.8
#execute if score @s obl.effect.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.shoot player @a ~ ~ ~ 0.55 0.8
#execute if score @s obl.effect.scorchfield.count matches 250.. run playsound minecraft:block.campfire.crackle player @a ~ ~ ~ 0.6 1
#execute if score @s obl.effect.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 1
#execute if score @s obl.effect.scorchfield.count matches 250.. run playsound minecraft:entity.blaze.hurt player @a ~ ~ ~ 0.6 1



###   Ф У Н К Ц И Я
## Сбрасывает таймер спадания
scoreboard players add @s obl.weapon.gluttony.combo 1
execute if score @s obl.weapon.gluttony.combo matches 100.. at @e[sort=nearest,limit=1,type=#obl:all_mobs,tag=obl.temp.hit] run function obl:item/weapon/gluttony/spawn_fangs