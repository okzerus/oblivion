bossbar add nethermothron "Адский Мотрон"
bossbar set minecraft:nethermothron max 200
bossbar set minecraft:nethermothron value 200
bossbar set minecraft:nethermothron visible true
bossbar set minecraft:nethermothron color yellow
bossbar set minecraft:nethermothron style notched_12
# bossbar set minecraft:mothron players @a[distance=..100]
tellraw @a {"text":"\u0410\u0434\u0441\u043a\u0438\u0439 \u041c\u043e\u0442\u0440\u043e\u043d \u043f\u0440\u043e\u0431\u0443\u0434\u0438\u043b\u0441\u044f!","italic":true,"color":"gold"}
playsound minecraft:entity.phantom.death master @a ~ ~ ~ 10 0.1
playsound minecraft:entity.lightning_bolt.thunder master @a ~ ~ ~ 10 0.1
scoreboard players set nethermothronalive oblivion 1
scoreboard players set nethermothronspawn oblivion 0
summon minecraft:phantom ~ ~10 ~ {Size:7,CustomName:'[{"text":"Адский Мотрон","color":"dark_red"}]',CustomNameVisible:1b,Health:200,PersistenceRequired:1b,Tags:["obl.mob",bloodmob,nethermothron,spread],ActiveEffects:[{Id:12,Duration:99999,Amplifier:0,ShowParticles:0b}],Attributes:[{Name:"generic.attack_damage",Base:30f},{Name:"generic.armor",Base:10f},{Name:"generic.knockback_resistance",Base:10f},{Name:"generic.max_health",Base:200F}]}
tellraw @a[scores={obl.chatnot=1},distance=..50,nbt={Inventory:[{tag:{CustomModelData:45001}}]}] {"text":"Адский Мотрон обнаружен поблизости!","color":"red"}
execute as @a[distance=..50,nbt={Inventory:[{tag:{CustomModelData:45001}}]}] if score @s obl.soundnot matches 1 at @s run playsound minecraft:entity.blaze.shoot master @s ~ ~ ~ 1 0.1
execute as @a[distance=..50,nbt={Inventory:[{tag:{CustomModelData:45001}}]}] if score @s obl.soundnot matches 1 at @s run playsound minecraft:block.bell.use master @s ~ ~ ~ 1 0.5
execute as @a[distance=..50,nbt={Inventory:[{tag:{CustomModelData:45001}}]}] if score @s obl.soundnot matches 1 at @s run playsound minecraft:entity.phantom.ambient master @s ~ ~ ~ 1 0.1