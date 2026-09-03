execute if score @s abilities matches 210 run playsound minecraft:entity.husk.ambient master @a ~ ~ ~ 1 0.1

execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood1"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood2"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood3"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood4"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood5"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood6"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood7"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.cursedfood8"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.goodfood1"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.goodfood2"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.goodfood3"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run execute at @s run summon armor_stand ~ ~ ~ {Tags:["obl.hungerstand","obl.goodfood4"],Invulnerable:1b,NoGravity:1b,Invisible:1b,Silent:1b}
execute if score @s abilities matches 210 run spreadplayers ~ ~ 5 15 false @e[type=minecraft:armor_stand,tag=obl.hungerstand,distance=..100]

execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood1] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:enchanted_golden_apple",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood2] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:golden_carrot",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood3] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:cake",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood4] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:golden_apple",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood5] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:enchanted_golden_apple",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood6] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:golden_carrot",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood7] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:cake",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.cursedfood8] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.cursedfood],Item:{id:"minecraft:golden_apple",Count:1b,tag:{cursedfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.goodfood1] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.goodfood],Item:{id:"minecraft:bread",Count:1b,tag:{goodfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.goodfood2] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.goodfood],Item:{id:"minecraft:carrot",Count:1b,tag:{goodfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.goodfood3] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.goodfood],Item:{id:"minecraft:baked_potato",Count:1b,tag:{goodfood:1b}}}
execute if score @s abilities matches 220 run execute at @e[tag=obl.hungerstand,tag=obl.goodfood4] run summon minecraft:item ~ ~ ~ {Glowing:1b,Tags:[obl.goodfood],Item:{id:"minecraft:mushroom_stew",Count:1b,tag:{goodfood:1b}}}
execute if score @s abilities matches 220 run execute as @e[tag=obl.cursedfood] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 2
execute if score @s abilities matches 220 run execute as @e[tag=obl.goodfood] at @s run playsound minecraft:entity.blaze.shoot master @a ~ ~ ~ 2 2