# Если носитель удерживает пкм на шифте и имеет свирепые патроны, проводим шквал
#execute if entity @s[predicate=obl:is.sneaking,scores={obl.weapon.winged_tiger.ammo.savage=1..}] run return run function obl:item/weapon/winged_tiger/ability/flurry/progress


## Если одно из этих условий срабатывает, все последующие НЕ выполняются:
# Если носитель удерживает пкм и имеет пустую обойму свирепых патрон, конвертируем их в обычные:
execute if score @s obl.weapon.winged_tiger.ammo.savage matches 0 run return run function obl:item/weapon/winged_tiger/reload/refill
# Если носитель удерживает пкм, НЕ сидя на шифте, и НЕ имеет ноль или максимум обычных патрон, заряжаем один:
execute unless predicate obl:is.sneaking if score @s obl.weapon.winged_tiger.ammo.normal matches 1..11 run return run function obl:item/weapon/winged_tiger/reload/single
# Если носитель удерживает пкм сидя на шифте и имеет обычные патроны, конвертируем их в свирепые:
execute if predicate obl:is.sneaking if score @s obl.weapon.winged_tiger.ammo.normal matches 1.. run return run function obl:item/weapon/winged_tiger/reload/conversion
# Если носитель удерживает пкм и имеет пустую обойму обычных патрон, конвертируем их в свирепые:
execute if score @s obl.weapon.winged_tiger.ammo.normal matches 0 run return run function obl:item/weapon/winged_tiger/reload/conversion