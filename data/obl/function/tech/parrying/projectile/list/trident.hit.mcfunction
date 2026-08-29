###   Ф У Н К Ц И Я
## Выдаём тег, дающий знать, что трезубец нанёс урон
tag @s add obl.dealt_damage
## Если брошенный трезубец зачарован на Громовержец, на позиции молнии призванной в грозу (если таковая есть), выполняем функцию на усиленный удар громовержцем.
execute if data entity @s Trident.tag.Enchantments[{id:"minecraft:channeling"}] at @e[type=lightning_bolt,distance=..4,limit=1,sort=nearest] run function obl:tech/parrying/projectile/list/trident.empowered_channeling