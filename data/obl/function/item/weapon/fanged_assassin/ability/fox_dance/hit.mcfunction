tag @s add obl.weapon.fanged_assassin.fox_dance.blink_target

# Желаемая точка приземления: 1,4 блока за мобом, на уровне его пяток
execute at @s rotated ~ 0 positioned ^ ^ ^-1.4 if function obl:item/weapon/fanged_assassin/ability/fox_dance/is_safe run function obl:item/weapon/fanged_assassin/ability/fox_dance/land
# Запасной вариант если позиция первого в стене
execute unless entity @a[tag=obl.weapon.fanged_assassin.fox_dance.blink_done] at @s rotated ~ 0 positioned ^ ^ ^-0.9 if function obl:item/weapon/fanged_assassin/ability/fox_dance/is_safe run function obl:item/weapon/fanged_assassin/ability/fox_dance/land
# Последний вариант если всё ваще плоха
execute unless entity @a[tag=obl.weapon.fanged_assassin.fox_dance.blink_done] run function obl:item/weapon/fanged_assassin/ability/fox_dance/land

function obl:item/weapon/fanged_assassin/ability/fox_dance/impact
return 1