###   S P A W N
summon minecraft:husk ~ -70 ~ {DeathLootTable:"minecraft:empty",InWaterTime:-1,NoAI:1b,NoGravity:1b,PersistenceRequired:1b,Silent:1b,CustomName:'[{"text":"Плачущий ангел"}]',Health:100,Tags:["obl.mob","obl.mob.custom_ability","obl.weeping_angel.attacked","obl.weeping_angel.found","obl.weeping_angel.dont_move","obl.weeping_angel","obl.difficultychanged","obl.temp.weeping_angel_modify","obl.checked"],ActiveEffects:[{Id:14,Duration:-1,Amplifier:0,ShowParticles:0b},{Id:11,Duration:-1,Amplifier:9,ShowParticles:0b},{Id:18,Duration:-1,Amplifier:9,ShowParticles:0b}],Attributes:[{Name:"generic.knockback_resistance",Base:10f},{Name:"generic.movement_speed",Base:0.6f},{Name:"generic.attack_damage",Base:0f},{Name:"generic.max_health",Base:100F}]}
summon armor_stand ~ ~ ~ {Tags:["obl.temp.weeping_angel_stand","obl.weeping_angel.stand","obl.stand.modified"],Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11579568}}},{id:"leather_leggings",Count:1b,tag:{display:{color:11579568}}},{id:"leather_chestplate",Count:1b,tag:{display:{color:11579568}}},{id:"player_head",Count:1b,tag:{SkullOwner:{Id:[I;297912466,274614739,-1316817711,2134341701],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvNzBkODA2ZjE5YTc1MjZmYzZmYTQ4ZjQyZjcwM2I5MGFkZDgxNDJkYWM3ZjM3YWQxYmUxYjRlZGNhYzViYTgzIn19fQ=="}]}}}}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[50f,0f,0f],LeftArm:[341f,319f,0f],RightArm:[341f,45f,0f]}}
summon armor_stand ~ ~ ~ {Tags:["obl.temp.weeping_angel_stand","obl.weeping_angel.stand","obl.weeping_angel.stand.elytra","obl.stand.modified"],Silent:1b,Invisible:1b,Invulnerable:1b,NoBasePlate:1b,NoGravity:1b,ShowArms:1b,Marker:1b,ArmorItems:[{},{},{id:"elytra",Count:1b},{}],HandItems:[{},{}],DisabledSlots:4144959,Pose:{Head:[50f,0f,0f],LeftArm:[341f,319f,0f],RightArm:[341f,45f,0f]}}
tp @e[type=husk,tag=obl.temp.weeping_angel_modify] ~ ~ ~

###   F U N C T I O N
scoreboard players add #id_holder.weeping_angel obl.id 1
scoreboard players set @e[type=husk,tag=obl.temp.weeping_angel_modify] obl.weeping_angel.attack_cd 100
scoreboard players operation @e[type=husk,tag=obl.temp.weeping_angel_modify] obl.id = #id_holder.weeping_angel obl.id
scoreboard players operation @e[type=armor_stand,tag=obl.temp.weeping_angel_stand] obl.id = @e[type=husk,tag=obl.temp.weeping_angel_modify,limit=1] obl.id
team join obl.no_collision @e[type=husk,tag=obl.temp.weeping_angel_modify]

###   N O T I F I C A T I O N
# -

###   C L E A N U P
tag @e[type=armor_stand] remove obl.temp.weeping_angel_stand
tag @e[type=husk] remove obl.temp.weeping_angel_modify