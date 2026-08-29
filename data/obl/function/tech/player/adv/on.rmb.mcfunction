# Из достижения tech/on.rmb

###   У Д Е Р Ж И В А Н И Е   П К М
tag @s add obl.holding_rmb
## obl.holding_rmb убирается в последующем тике в on.player.1t
scoreboard players add @s obl.holding_rmb 1

###   С П О С О Б Н О С Т И
## НАЖАТИЕ:
#
## УДЕРЖИВАНИЕ:
# Crack of Dawn
execute if predicate obl:holding/crack_of_dawn unless score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run function obl:item/weapon/crack_of_dawn/ability/charging

###   О Ч И С Т К А
advancement revoke @s only obl:tech/on.rmb