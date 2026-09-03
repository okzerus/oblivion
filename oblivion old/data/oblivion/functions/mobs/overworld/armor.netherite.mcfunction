###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/armor.netherite",IsBaby:0,CustomName:'[{"text":"Одержимые доспехи","color":"gray"}]',Health:60,Silent:1b,Tags:["obl.cantbleed","obl.armormob","obl.armornetherite","obl.mob","obl.checked"],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],Attributes:[{Name:"generic.knockback_resistance",Base:1f},{Name:"generic.max_health",Base:60f}]}

###   M O D I F Y
effect give @s invisibility infinite 0 true
effect give @s slowness infinite 1 true
loot replace entity @s armor.head loot oblivion:items/armor/possessed_netherite_helmet
loot replace entity @s armor.chest loot oblivion:items/armor/possessed_netherite_chestplate
loot replace entity @s armor.legs loot oblivion:items/armor/possessed_netherite_leggings
loot replace entity @s armor.feet loot oblivion:items/armor/possessed_netherite_boots
item replace entity @s weapon.mainhand with air
item replace entity @s weapon.offhand with air

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Одержимые доспехи (Незерит) обнаружены поблизости!","color":"green"}
playsound minecraft:block.entity.blaze.hurt hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 2 0.1
playsound minecraft:block.entity.elder_guardian.ambient hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 2 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked