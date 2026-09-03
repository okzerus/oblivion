###   S P A W N
data merge entity @s {DeathLootTable:"oblivion:mobs/overworld/viking",CustomName:'[{"text":"Викинг"}]',Health:20,Tags:["obl.mob","obl.mob.custom_ability","obl.mob.viking","obl.viking.shielded"],HandDropChances:[0.0f,0.0f],ArmorDropChances:[0F,0F,0F,0.0f]}

###   M O D I F Y
effect give @s slowness infinite 0 false
effect give @s resistance infinite 1 false
loot replace entity @s weapon.mainhand loot oblivion:items/weapons/viking_axe
loot replace entity @s weapon.offhand loot oblivion:items/weapons/viking_shield
loot replace entity @s armor.head loot oblivion:items/armor/viking_helmet
item replace entity @s armor.chest with air
item replace entity @s armor.legs with air
item replace entity @s armor.feet with air

###   N O T I F I C A T I O N
tellraw @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] {"text":"Викинг обнаружен поблизости!","color":"dark_green"}
playsound minecraft:entity.skeleton.ambient hostile @a[tag=has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 1.5 0.1
playsound minecraft:item.shield.block hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.8 0.1
playsound minecraft:block.bell.use hostile @a[tag=obl.has_detector,distance=..50,scores={obl.sound_notification=1}] ~ ~ ~ 1 0.5 0.1

###   C L E A N U P
tag @s add obl.checked