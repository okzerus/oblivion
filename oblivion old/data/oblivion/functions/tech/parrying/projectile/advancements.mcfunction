###   E X C L U S I V E
execute if entity @s[type=tnt] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/tnt
execute if entity @s[type=fireball] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/fireball
execute if entity @s[type=small_fireball,tag=obl.projectile.blaze_owner] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/fireball
execute if entity @s[type=dragon_fireball] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/fireball
execute if entity @s[type=ender_pearl] run advancement grant @p[tag=obl.temp.reflecting,tag=obl.temp.origin] only oblivion:advancements/weaponry/shield/additions/ender_pearl
execute if entity @s[type=ender_pearl] run advancement grant @p[tag=obl.temp.reflecting,tag=!obl.temp.origin,predicate=!oblivion:is.sneaking] only oblivion:advancements/weaponry/shield/additions/ender_pearl.denied
execute if entity @s[type=ender_pearl] run advancement grant @p[tag=obl.temp.reflecting,tag=!obl.temp.origin,predicate=oblivion:is.sneaking] only oblivion:advancements/weaponry/shield/additions/ender_pearl.relocate
execute if entity @s[type=firework_rocket] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/firework_rocket
execute if entity @s[type=fishing_bobber] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/fishing_bobber
execute if entity @s[type=item] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/item
execute if entity @s[type=item,tag=obl.item.water_bucket] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/item.bucket
execute if entity @s[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}}] run function oblivion:tech/parrying/projectile/list/anvil.advancement
execute if entity @s[type=magma_cube] as @p[tag=obl.temp.reflecting,advancements={oblivion:advancements/weaponry/shield/additions/magma_cube=false}] run playsound oblivion:misc.ballin hostile @s ~ ~ ~ 0.3 1
execute if entity @s[type=magma_cube] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/magma_cube
execute if entity @s[type=potion] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/potion
execute if entity @s[type=experience_bottle] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/additions/experience_bottle


###   P A R R Y I N G   T H E   W O R L D
execute if entity @s[type=tnt] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.tnt
execute if entity @s[type=fireball] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.fireball
execute if entity @s[type=small_fireball] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.small_fireball
execute if entity @s[type=dragon_fireball] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.dragon_fireball
execute if entity @s[type=ender_pearl] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.ender_pearl
execute if entity @s[type=firework_rocket] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.firework_rocket
execute if entity @s[type=fishing_bobber] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.fishing_bobber
execute if entity @s[type=item] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.item
execute if entity @s[type=falling_block] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.falling_block
execute if entity @s[type=magma_cube] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.magma_cube
execute if entity @s[type=potion] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.potion
execute if entity @s[type=experience_bottle] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.experience_bottle
execute if entity @s[type=egg] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.egg
execute if entity @s[type=snowball] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.snowball
execute if entity @s[type=#minecraft:arrows] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.arrow
execute if entity @s[type=llama_spit] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.llama_spit
execute if entity @s[type=shulker_bullet] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.shulker_bullet
execute if entity @s[type=trident] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.trident
execute if entity @s[type=wither_skull] run advancement grant @p[tag=obl.temp.reflecting] only oblivion:advancements/weaponry/shield/parrying_the_world parry.wither_skull