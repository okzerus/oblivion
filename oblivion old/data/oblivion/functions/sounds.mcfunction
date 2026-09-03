execute if entity @s[tag=pickaxes] run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 1.6
execute if entity @s[tag=ragezombie] run playsound minecraft:entity.zombie_horse.hurt hostile @a ~ ~ ~ 1 0.6
execute if entity @s[tag=starving_husk] run playsound minecraft:entity.husk.hurt hostile @a ~ ~ ~ 1 0.6
execute if entity @s[tag=wisp] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=pixie] run playsound minecraft:entity.rabbit.hurt hostile @a ~ ~ ~ 1 0.1
execute if entity @s[tag=amethystpixie] run function oblivion:tech/abilities/amethystpixieabilities/hurt
execute if entity @s[tag=obl.pixieclone] run function oblivion:tech/abilities/amethystpixieabilities/hurt
execute if entity @s[tag=obl.armormob] run function oblivion:abilities/bosses/cursed_armor/armor_parts/hurt
execute if entity @s[tag=obl.oblivionspirit] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=obl.oblivionspirit] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=obl.oblivionspirit] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.5
execute if entity @s[tag=obl.oblivionspirit] run playsound minecraft:entity.elder_guardian.hurt hostile @a ~ ~ ~ 1 0.5

execute if entity @s[tag=obl.boss.cursed_armor,tag=!obl.cursed_armor.spirit,tag=!obl.phase.2,tag=!obl.phase.3] run function oblivion:abilities/bosses/cursed_armor/phase_1/hurt
execute if entity @s[tag=obl.boss.cursed_armor,tag=!obl.cursed_armor.spirit,tag=obl.phase.2,tag=!obl.phase.3] run function oblivion:abilities/bosses/cursed_armor/phase_2/hurt
execute if entity @s[tag=obl.cursed_armor.part] run function oblivion:abilities/bosses/cursed_armor/armor_parts/hurt
execute if entity @s[tag=obl.boss.cursed_armor,tag=!obl.cursed_armor.spirit,tag=obl.phase.3] run function oblivion:abilities/bosses/cursed_armor/armor_parts/hurt
execute if entity @s[tag=obl.cursed_armor.spirit] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 2 0.1
execute if entity @s[tag=obl.cursed_armor.spirit] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 2 0.1


execute if entity @s[tag=lastsoul] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 2 0.1
execute if entity @s[tag=lastsoul] run playsound minecraft:entity.vex.hurt hostile @a ~ ~ ~ 2 0.1
execute if entity @s[tag=bastionsoul] run playsound minecraft:entity.ghast.hurt hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=withersoul] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1.8
execute if entity @s[tag=stormdetail] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.1
execute if entity @s[tag=stormdetail] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 1 0.1

execute if score solareclipse oblivion matches 1 if entity @s[tag=solarwraith] run playsound minecraft:entity.iron_golem.hurt hostile @a ~ ~ ~ 1 0.1
execute if score solareclipse oblivion matches 1 if entity @s[tag=death] run playsound minecraft:entity.husk.death hostile @a ~ ~ ~ 1 0.1

execute if score bloodmoon oblivion matches 1 if entity @s[tag=psix] run playsound minecraft:entity.vindicator.hurt hostile @a ~ ~ ~ 1 0.7
execute if score bloodmoon oblivion matches 1 if entity @s[tag=devil] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 0.1
execute if score bloodmoon oblivion matches 1 if entity @s[tag=death] run playsound minecraft:entity.blaze.hurt hostile @a ~ ~ ~ 1 0.1
execute if score bloodmoon oblivion matches 1 if entity @s[tag=demon] run playsound minecraft:entity.wither.hurt hostile @a ~ ~ ~ 1 1.5

execute if entity @s[tag=desertmob] run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=snowmob] run playsound minecraft:entity.evoker.prepare_attack hostile @a ~ ~ ~ 1 2

execute if entity @s[tag=iceshard] run playsound minecraft:block.glass.break hostile @a ~ ~ ~ 1 2
execute if entity @s[tag=desertshard] run playsound minecraft:entity.blaze.shoot hostile @a ~ ~ ~ 1 2

execute if score xmasmoon oblivion matches 1 if entity @s[tag=elf] run playsound minecraft:entity.player.hurt hostile @a ~ ~ ~ 1 1
execute if score xmasmoon oblivion matches 1 if entity @s[tag=xmassoul] run playsound minecraft:block.enchantment_table.use hostile @a ~ ~ ~ 1 1.6
execute if score xmasmoon oblivion matches 1 if entity @s[tag=grinch] run playsound minecraft:entity.pillager.hurt hostile @a ~ ~ ~ 1 0.6
execute if score xmasmoon oblivion matches 1 if entity @s[tag=gift] run playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 1 1
execute if score xmasmoon oblivion matches 1 if entity @s[tag=xmasstorm] run playsound minecraft:entity.snow_golem.death hostile @a ~ ~ ~ 1 1