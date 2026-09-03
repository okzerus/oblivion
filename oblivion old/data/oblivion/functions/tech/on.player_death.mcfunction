tag @s add obl.dead
tag @s remove obl.alive



###   R E S E T   S C O R E S
scoreboard players set @s obl.death 0
scoreboard players set @s obl.death_boss.cd 0
scoreboard players set @s obl.murasama.blood 0
scoreboard players set @s obl.yamato.style 0



###   F U N C T I O N S   O N   D E A T H
execute if entity @s[tag=obl.enraged] run function oblivion:tech/mob_rage_disabled
execute if entity @s[tag=obl.stunned] run function oblivion:tech/stun_disabled
execute if entity @s[tag=obl.cursed] run function oblivion:tech/curse_disabled
execute if entity @s[tag=obl.brokenarmor] run function oblivion:tech/armor_breaking/remove

execute if entity @s[tag=obl.in_battle.boss] run tag @s add obl.death_boss.cd
execute if entity @s[tag=obl.in_battle.pixie] run function oblivion:tech/testforpixie
execute if entity @s[tag=obl.in_battle.devil] run function oblivion:tech/testfordevil
execute if entity @s[tag=obl.in_battle.hunger] run function oblivion:tech/testforhunger
execute if entity @s[tag=obl.in_battle.cursed_armor] run function oblivion:abilities/bosses/cursed_armor/disappear/check



###   I T E M   D R O P P I N G
execute if predicate oblivion:items/has.pendant_of_memory run tag @s add obl.temp.pendant
execute if predicate oblivion:items/has.pendant_of_memory.rusty run tag @s add obl.temp.rusty_pendant
execute unless score #keepInventory oblivion matches 1 if entity @s[gamemode=!creative,gamemode=!spectator] run function oblivion:tech/on.player_death.item_dropping
tag @s remove obl.temp.pendant
tag @s remove obl.temp.rusty_pendant

###   R E S E T   T I T L E S
title @s clear
title @s times 20 100 20