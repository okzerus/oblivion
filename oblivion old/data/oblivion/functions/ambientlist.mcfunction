execute if entity @s[tag=pickaxes] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=nuclear] run playsound minecraft:ambient.basalt_deltas.additions hostile @a ~ ~ ~ 1 1.6
execute if entity @s[tag=ragezombie] run playsound minecraft:entity.zombie_horse.death hostile @a ~ ~ ~ 0.5 0.6
execute if entity @s[tag=starving_husk] run playsound minecraft:entity.husk.ambient hostile @a ~ ~ ~ 0.5 0.3
execute if entity @s[tag=wisp] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 0.5 0.3
execute if entity @s[tag=pixie] run playsound minecraft:entity.rabbit.hurt hostile @a ~ ~ ~ 0.5 0.1
execute if entity @s[tag=amethystpixie] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 0.5 0.1
execute if entity @s[tag=obl.pixieclone] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 0.5 0.1
execute if entity @s[tag=obl.armormob] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=desertmob] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=snowmob] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=obl.oblivionspirit] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 1 0.5

execute if entity @s[tag=cursedarmor,tag=!cursedsoul,tag=!phase2,tag=!phase3] run playsound minecraft:entity.wither_skeleton.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=cursedarmor,tag=!cursedsoul,tag=phase2] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=cursedarmorpart] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if entity @s[tag=cursedsoul] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 0.5 0.1

execute if entity @s[tag=obl.boss.black_death] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 1 0.6

execute if entity @s[tag=lastsoul] run playsound minecraft:entity.vex.ambient hostile @a ~ ~ ~ 0.5 0.1
execute if entity @s[tag=bastionsoul] run playsound minecraft:entity.ghast.ambient hostile @a ~ ~ ~ 0.5 2
execute if entity @s[tag=withersoul] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.5 2
execute if entity @s[tag=storm] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 0.5 0.1

execute if score solareclipse oblivion matches 1 if entity @s[tag=solarwraith] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 0.5 0.3
execute if score solareclipse oblivion matches 1 if entity @s[tag=death] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5

execute if score bloodmoon oblivion matches 1 if entity @s[tag=psix] run playsound minecraft:entity.shulker.ambient hostile @a ~ ~ ~ 0.5 0.2
execute if score bloodmoon oblivion matches 1 if entity @s[tag=devil] run playsound minecraft:entity.wither.ambient hostile @a ~ ~ ~ 0.5 0.1
execute if score bloodmoon oblivion matches 1 if entity @s[tag=death] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 0.5 0.3
execute if score bloodmoon oblivion matches 1 if entity @s[tag=demon] run playsound minecraft:entity.blaze.ambient hostile @a ~ ~ ~ 0.5 0.3
execute if score bloodmoon oblivion matches 1 if entity @s[tag=obl.psycho,tag=obl.invisible] run playsound minecraft:entity.shulker.ambient hostile @a ~ ~ ~ 1 0.7

execute if score xmasmoon oblivion matches 1 if entity @s[tag=elf] run playsound minecraft:entity.vindicator.ambient hostile @a ~ ~ ~ 0.5 1.5
execute if score xmasmoon oblivion matches 1 if entity @s[tag=xmassoul] run playsound minecraft:entity.elder_guardian.ambient hostile @a ~ ~ ~ 0.5 0.5
execute if score xmasmoon oblivion matches 1 if entity @s[tag=grinch] run playsound minecraft:entity.pillager.ambient hostile @a ~ ~ ~ 0.5 0.2
execute if score xmasmoon oblivion matches 1 if entity @s[tag=gift] run playsound minecraft:entity.player.hurt_freeze hostile @a ~ ~ ~ 0.5 1
execute if score xmasmoon oblivion matches 1 if entity @s[tag=xmasstorm] run playsound minecraft:entity.snow_golem.death hostile @a ~ ~ ~ 0.5 1

scoreboard players reset @s obl.mobambient