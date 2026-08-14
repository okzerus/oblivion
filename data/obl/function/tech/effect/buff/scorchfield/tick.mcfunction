###   P A R T I C L E S
execute if score @s obl.effect.buff.scorchfield.count matches 1..49 run particle minecraft:smoke ~ ~ ~ 10 3 10 0.01 12 normal
execute if score @s obl.effect.buff.scorchfield.count matches 50.. run particle minecraft:large_smoke ~ ~ ~ 10 3 10 0.01 8 normal
execute if score @s obl.effect.buff.scorchfield.count matches 50..149 run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 3 normal
execute if score @s obl.effect.buff.scorchfield.count matches 150.. run particle minecraft:flame ~ ~ ~ 10 3 10 0.01 12 normal
execute if score @s obl.effect.buff.scorchfield.count matches 250.. run particle minecraft:lava ~ ~ ~ 10 0 10 0 5 normal



###   F U N C T I O N
tag @s add obl.effect.buff.scorchfield
## Decaying. Is constantly set to 300 by inflicting Scorchfield (item/weapon/crack_of_dawn/hit), or when targets take Scorch damage within Scorchfield's range (tech/effect/debuff/scorch/tick).
execute if score @s obl.effect.buff.scorchfield.decay matches 1.. run scoreboard players remove @s obl.effect.buff.scorchfield.decay 1
## When decay hits zero, start taking away Scorchfield count. (BUFF: Maybe move to 5t function for -4 count per second?)
execute if entity @s[scores={obl.effect.buff.scorchfield.decay=0,obl.effect.buff.scorchfield.count=1..}] run scoreboard players remove @s obl.effect.buff.scorchfield.count 1
## Set overflow back to 300.
execute if score @s obl.effect.buff.scorchfield.count matches 301.. run scoreboard players set @s obl.effect.buff.scorchfield.count 300



###   E N D
execute if score @s obl.effect.debuff.scorch.tick matches 0 run function obl:tech/effect/debuff/scorch/end