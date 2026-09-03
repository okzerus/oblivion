execute as @e[distance=1..10,type=!item,type=!experience_orb,tag=!pixie,tag=!amethystpixie,type=!iron_golem,type=!snow_golem,type=!end_crystal,type=!#arrows,type=!snowball,type=!ender_pearl,type=!experience_orb,type=!item_frame,type=!painting,type=!area_effect_cloud,type=!armor_stand,type=!blaze,type=!boat,type=!minecart,type=!chest_minecart,type=!dragon_fireball,type=!fireball,type=!small_fireball,type=!furnace_minecart,type=!egg,type=!ender_pearl,type=!eye_of_ender,type=!evoker_fangs,type=!experience_bottle,type=!falling_block,type=!firework_rocket,type=!glow_item_frame,type=!hopper_minecart,type=!leash_knot,type=!llama_spit,type=!marker,type=!wither,type=!wither_skull,type=!ender_dragon,type=!witch,type=!vex,type=!trident,type=!tnt_minecart,type=!tnt,type=!spawner_minecart,type=!skeleton_horse,type=!shulker_bullet,type=!potion] at @s run function oblivion:items/amethystability
particle block amethyst_block ~ ~ ~ 5 0 5 0 500 force
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:block.amethyst_block.place master @a ~ ~ ~ 1 0.1
playsound minecraft:entity.zombie_villager.cure master @a ~ ~ ~ 1 0.1
scoreboard players set @s amethyst.used1 1
clear @s amethyst_cluster{obl.enchantedamethyst:1b} 1