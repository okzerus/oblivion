# Вёдра жидкости: Проверяем, если предмет стукнулся об какой-либо блок - разливаем жидкость, оставляем пустое ведро.
# Пока предмет заморожен (в руках у того, кто парировал) - не проверяем, столкновений всё равно не будет
execute if entity @s[tag=obl.item.liquid_bucket,tag=!obl.freeze] run function obl:tech/parrying/projectile/list/item/bucket.check