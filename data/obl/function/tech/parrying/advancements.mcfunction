###   Д О С Т И Ж Е Н И Я
# Парирование
advancement grant @s only obl:advancements/weaponry/shield/parry
# Кол-во парирований
scoreboard players add @s obl.parry.overall_count 1
execute if score @s obl.parry.overall_count matches 100.. run advancement grant @s only obl:advancements/weaponry/shield/additions/parry.100
execute if score @s obl.parry.overall_count matches 1000.. run advancement grant @s only obl:advancements/weaponry/shield/additions/parry.1000
execute if score @s obl.parry.overall_count matches 10000.. run advancement grant @s only obl:advancements/weaponry/shield/additions/parry.10000
# Парирование моба
execute if entity @n[type=#obl:parryable,tag=obl.temp.reflected,tag=obl.parryable_mob] run advancement grant @s only obl:advancements/weaponry/shield/additions/whole_mob
# Парирование молнии
advancement grant @s[tag=obl.just_parried_fucking_lightning] only obl:advancements/weaponry/shield/additions/lightning_bolt
# Парирование при половине ХП
execute as @e[type=#obl:parryable,tag=obl.temp.reflected] unless entity @s[tag=obl.temp.same_owner] run advancement grant @p[tag=obl.temp.reflecting,scores={obl.player_health=..1}] only obl:advancements/weaponry/shield/additions/half_a_heart
# Парирование динамита
execute if entity @n[type=tnt,tag=obl.temp.reflected] run advancement grant @s only obl:advancements/weaponry/shield/additions/tnt
# Парирование файерболлов
execute if entity @n[type=fireball,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/fireball
execute if entity @n[type=small_fireball,tag=obl.projectile.blaze_owner,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/fireball
execute if entity @n[type=dragon_fireball,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/fireball
# Парирование эндер-пёрлов
execute as @e[type=ender_pearl,tag=obl.temp.reflected] on origin run tag @s add obl.temp.origin
execute if entity @n[type=ender_pearl,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting,tag=obl.temp.origin] only obl:advancements/weaponry/shield/additions/ender_pearl
execute if entity @n[type=ender_pearl,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting,tag=!obl.temp.origin,predicate=!obl:is.sneaking] only obl:advancements/weaponry/shield/additions/ender_pearl.denied
execute if entity @n[type=ender_pearl,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting,tag=!obl.temp.origin,predicate=obl:is.sneaking] only obl:advancements/weaponry/shield/additions/ender_pearl.relocate
tag @a remove obl.temp.origin
# Парирование фейерверка
execute if entity @n[type=firework_rocket,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/firework_rocket
# Парирование поплавка
execute if entity @n[type=fishing_bobber,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/fishing_bobber
# Парирование предметов
execute if entity @n[type=item,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/item
execute if entity @n[type=item,tag=obl.item.water_bucket,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/item.bucket
# Парирование наковальни
execute if entity @n[type=falling_block,nbt={BlockState:{Name:"minecraft:anvil"}},tag=obl.temp.reflected] run function obl:tech/parrying/projectile/list/anvil.advancement
# Парирование магма-слизня
execute if entity @n[type=magma_cube,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/magma_cube
# Парирование зелья
execute if entity @n[type=#obl:potions,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/potion
# Парирование пузырька опыта
execute if entity @n[type=experience_bottle,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/additions/experience_bottle



###   Г Л О Б А Л Ь Н О Е   Д О С Т И Ж Е Н И Е
## Этапы выполнениня "ПАРИРУЯ МИР"
# Молния
advancement grant @s[tag=obl.just_parried_fucking_lightning] only obl:advancements/weaponry/shield/parrying_the_world parry.lightning_bolt
# Динамит
execute if entity @n[type=tnt,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.tnt
# Огненный шар
execute if entity @n[type=fireball,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.fireball
# Огненный шар всполоха
execute if entity @n[type=small_fireball,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.small_fireball
# Огненный шар дракона
execute if entity @n[type=dragon_fireball,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.dragon_fireball
# Эндер-пёрл
execute if entity @n[type=ender_pearl,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.ender_pearl
# Фейерверк
execute if entity @n[type=firework_rocket,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.firework_rocket
# Поплавок
execute if entity @n[type=fishing_bobber,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.fishing_bobber
# Предмет
execute if entity @n[type=item,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.item
# Падающий блок
execute if entity @n[type=falling_block,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.falling_block
# Магма-куб
execute if entity @n[type=magma_cube,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.magma_cube
# Зелье
execute if entity @n[type=#obl:potions,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.potion
# Пузырёк опыта
execute if entity @n[type=experience_bottle,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.experience_bottle
# Яйцо
execute if entity @n[type=egg,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.egg
# Снежок
execute if entity @n[type=snowball,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.snowball
# Стрела
execute if entity @n[type=#minecraft:arrows,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.arrow
# Харчма ламы
execute if entity @n[type=llama_spit,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.llama_spit
# Снаряд шалкера
execute if entity @n[type=shulker_bullet,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.shulker_bullet
# Трезубец
execute if entity @n[type=trident,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.trident
# Визер-череп
execute if entity @n[type=wither_skull,tag=obl.temp.reflected] run advancement grant @p[tag=obl.temp.reflecting] only obl:advancements/weaponry/shield/parrying_the_world parry.wither_skull