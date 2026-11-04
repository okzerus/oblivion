###   Ф У Н К Ц И Я
## Проверка удерживания оружия в руке
execute unless entity @s[tag=obl.holding.winged_tiger] run function obl:item/weapon/winged_tiger/started_holding
execute unless predicate obl:holding/winged_tiger if entity @s[tag=obl.holding.winged_tiger] run return run function obl:item/weapon/winged_tiger/stopped_holding

## Отображение патрон
# Обычные
title @s[scores={obl.weapon.winged_tiger.hud_mode=1}] actionbar [{"text":"Патроны «Тигроубийцы» ","color":"#e4ad47"},{"score":{"name":"@s","objective":"obl.weapon.winged_tiger.ammo.normal"},"color":"gold"},{"text":"/12","color":"gray"}]
# Свирепые
title @s[scores={obl.weapon.winged_tiger.hud_mode=2}] actionbar [{"text":"Свирепые Патроны «Тигроубийцы» ","color":"#db581c"},{"score":{"name":"@s","objective":"obl.weapon.winged_tiger.ammo.savage"},"color":"red"},{"text":"/6","color":"gray"}]
# Синь
title @s[scores={obl.weapon.winged_tiger.hud_mode=3}] actionbar [{"text":"Патроны «Тигроубийцы» ","color":"#e4ad47"},{"score":{"name":"@s","objective":"obl.weapon.winged_tiger.ammo.normal"},"color":"gold"},{"text":"/12","color":"gray"},{"text":"   Синь (心) доступен","color":"#fef452"}]

## Способности
# Рассечение
execute unless score @s obl.weapon.winged_tiger.tanglecleaver.cd matches 1.. run function obl:item/weapon/winged_tiger/ability/tanglecleaver/check_requirements
execute if entity @s[tag=obl.temp.can_tanglecleaver] run function obl:item/weapon/winged_tiger/ability/tanglecleaver/window_activate
execute if entity @s[tag=obl.weapon.winged_tiger.tanglecleaver_window,tag=!obl.temp.can_tanglecleaver] run function obl:item/weapon/winged_tiger/ability/tanglecleaver/window_deactivate
tag @s remove obl.temp.can_tanglecleaver

execute if entity @s[tag=obl.weapon.winged_tiger.performing_tanglecleaver] run function obl:item/weapon/winged_tiger/ability/tanglecleaver/vfx