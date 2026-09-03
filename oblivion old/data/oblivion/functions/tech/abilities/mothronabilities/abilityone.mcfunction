execute if score @s abilities matches 40 run playsound minecraft:entity.phantom.death master @a ~ ~ ~ 10 0.1
execute if score @s abilities matches 40 run summon lightning_bolt ~ ~5 ~

execute if score @s abilities matches 42..50 run execute at @r[distance=..40] run summon fireball ~ ~10 ~ {Invulnerable:1b,Tags:["mothronfireball"],power:[0.0,-0.1,0.0],ExplosionPower:2}