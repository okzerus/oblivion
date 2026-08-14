###   P A R T I C L E S
particle flame ~ ~0.5 ~ 0.3 0.6 0.3 0.01 2
particle smoke ~ ~0.5 ~ 0.3 0.6 0.3 0.01 4



###   F U N C T I O N
## Tick down when there IS a Scorchfield player present within 15 block radius; stop at 100.
execute if entity @a[tag=obl.effect.buff.scorchfield,distance=..15] if score @s obl.effect.debuff.scorch.tick matches 101.. run scoreboard players remove @s obl.effect.debuff.scorch.tick 1
## Tick down when there is NO Scorchfield player present within 15 block radius, down to 0.
execute unless entity @a[tag=obl.effect.buff.scorchfield,distance=..15] run scoreboard players remove @s obl.effect.debuff.scorch.tick 1
## Set duration back to 5 seconds when a Scorchfield player is within range and duration is under 5 seconds.
execute if entity @a[tag=obl.effect.buff.scorchfield,distance=..15] if score @s obl.effect.debuff.scorch.tick matches ..99 run scoreboard players set @s obl.effect.debuff.scorch.tick 100

## Tick up the interval between damage dealing, depending on the strength of the debuff.
scoreboard players add @s obl.effect.debuff.scorch.interval 1
execute if entity @s[scores={obl.effect.debuff.scorch.strength=1,obl.effect.debuff.scorch.interval=30..}] run scoreboard players set @s obl.effect.debuff.scorch.interval 0
execute if entity @s[scores={obl.effect.debuff.scorch.strength=2,obl.effect.debuff.scorch.interval=20..}] run scoreboard players set @s obl.effect.debuff.scorch.interval 0



###   D A M A G E
# Deal damage depending on effect's strength.
execute if entity @s[scores={obl.effect.debuff.scorch.strength=1,obl.effect.debuff.scorch.interval=0}] run damage @s 1 obl:scorch by @p[tag=obl.effect.buff.scorchfield]
execute if entity @s[scores={obl.effect.debuff.scorch.strength=2,obl.effect.debuff.scorch.interval=0}] run damage @s 2 obl:scorch by @p[tag=obl.effect.buff.scorchfield]

## Add Scorchfield count to nearby players with Scorchfield buff.
execute if entity @s[scores={obl.effect.debuff.scorch.strength=1,obl.effect.debuff.scorch.interval=0}] run scoreboard players add @a[tag=obl.effect.buff.scorchfield,distance=..15] obl.effect.buff.scorchfield.count 1
execute if entity @s[scores={obl.effect.debuff.scorch.strength=2,obl.effect.debuff.scorch.interval=0}] run scoreboard players add @a[tag=obl.effect.buff.scorchfield,distance=..15] obl.effect.buff.scorchfield.count 2

## The target takes Scorch damage; prevent Scorchfield from decaying.
execute if score @s obl.effect.debuff.scorch.interval matches 0 run scoreboard players set @a[tag=obl.effect.buff.scorchfield,distance=..15] obl.effect.buff.scorchfield.decay 300



###   E N D
execute if score @s obl.effect.debuff.scorch.tick matches 0 run function obl:tech/effect/debuff/scorch/end