summon area_effect_cloud ~ ~ ~ {Particle:flame,Radius:10f,RadiusPerTick:-0.05f,Duration:500,Effects:[{Id:2,Amplifier:4,Duration:200},{Id:17,Amplifier:9,Duration:200},{Id:18,Amplifier:4,Duration:200},{Id:20,Amplifier:4,Duration:200}]}
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
summon lightning_bolt ~ ~5 ~
particle minecraft:flame ~ ~ ~ 0 0 0 0.1 250

summon minecraft:magma_cube ~ ~60 ~ {Size:20,CustomName:'[{"text":"Гигантский Дьявольский Куб","color":"dark_red"}]',CustomNameVisible:1b,Health:666,Invulnerable:1b,PersistenceRequired:1b,Tags:["obl.giantdevilcube",bloodmob,spread],ActiveEffects:[{Id:10,Duration:999999,Amplifier:0,Ambient:1b,ShowParticles:1b},{Id:5,Duration:999999,Amplifier:1,Ambient:1b,ShowParticles:1b}],Attributes:[{Name:"generic.max_health",Base:666f}]}
tellraw @a[tag=inbattlewithdevil] {"text":"\u0413\u0438\u0433\u0430\u043d\u0442\u0441\u043a\u0438\u0439 \u0414\u044c\u044f\u0432\u043e\u043b\u044c\u0441\u043a\u0438\u0439 \u041a\u0443\u0431 \u043f\u0440\u043e\u0431\u0443\u0434\u0438\u043b\u0441\u044f!","italic":true,"color":"dark_red"}

execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.cubespreadthis"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute at @s at @a[tag=inbattlewithdevil] run summon armor_stand ~ ~ ~ {Tags:["obl.devilcubestand","obl.devilcubemeteor","obl.devilcubeplmeteor"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}

advancement grant @a[tag=inbattlewithdevil] only oblivion:advancements/mobs/threedevilcube