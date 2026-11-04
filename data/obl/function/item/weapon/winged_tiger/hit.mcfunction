###   Ф У Н К Ц И Я
## Если используются свирепые патроны
execute if score @s obl.weapon.winged_tiger.ammo.savage matches 1.. run return run function obl:item/weapon/winged_tiger/ammo/spend_savage
## Если используются обычные патроны
execute if score @s obl.weapon.winged_tiger.ammo.normal matches 1.. run return run function obl:item/weapon/winged_tiger/ammo/spend_normal
## Если никаких патрон не заряжено
function obl:item/weapon/winged_tiger/ammo/hit_dry