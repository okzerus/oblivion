playsound minecraft:block.respawn_anchor.deplete master @a ~ ~ ~ 1.5 0.1
playsound minecraft:entity.elder_guardian.hurt master @a ~ ~ ~ 1.5 0.1
playsound minecraft:entity.wither.death master @a ~ ~ ~ 1.5 2
playsound minecraft:entity.iron_golem.damage master @a ~ ~ ~ 1.5 0.1

function oblivion:tech/shield_parry_beam_damage

tag @a remove obl.reflected_with_shield
particle dust 0 0 0 1 ~ ~1 ~ 2 2 2 0.01 100

kill @e[type=marker,limit=1,sort=nearest,tag=obl.default_beam]
