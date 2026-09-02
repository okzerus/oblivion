# Когда игрок в режиме отладки, немедленно восстанавливает все способности.
execute if score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run function obl:item/weapon/crack_of_dawn/ability/ready
execute if score @s obl.weapon.fanged_assassin.fox_dance.cd matches 1..15 run function obl:item/weapon/fanged_assassin/ability/fox_dance/ready
execute if score @s obl.weapon.fanged_assassin.fox_dance.cd matches 21..95 run function obl:item/weapon/fanged_assassin/ability/fox_dance/ready
execute if score @s obl.weapon.fanged_assassin.autumn_red.cd matches 1.. run function obl:item/weapon/fanged_assassin/ability/autumn_red/ready