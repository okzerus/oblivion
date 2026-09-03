particle minecraft:enchant ~ ~1 ~ 0.3 0.8 0.3 0 50 force
playsound minecraft:entity.enderman.teleport master @a ~ ~ ~ 1 1.5
tp @s @e[tag=obl.boss.cursed_armor,limit=1]
playsound minecraft:block.anvil.use master @a ~ ~ ~ 1 1.5
execute as @e[type=wither_skeleton,tag=obl.boss.cursed_armor,limit=1,tag=!obl.disable_abilities] unless score @s obl.fake_health matches ..0 run scoreboard players add @s obl.fake_health 20
execute store result bossbar oblivion:boss_health value run scoreboard players get @e[type=wither_skeleton,tag=obl.boss.cursed_armor,limit=1] obl.fake_health
item replace entity @e[tag=obl.boss.cursed_armor,limit=1] armor.chest with netherite_chestplate{CustomModelData:7172}
tp @s ~ -256 ~
kill @s

