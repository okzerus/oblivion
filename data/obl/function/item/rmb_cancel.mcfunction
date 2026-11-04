###   С П И С О К   О Р У Ж И Я
# Проблеск Зари
execute if entity @s[predicate=obl:holding/crack_of_dawn,scores={obl.holding_rmb=35..40}] unless score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run function obl:tech/cd_taunt
execute if entity @s[predicate=obl:holding/crack_of_dawn,scores={obl.holding_rmb=20..39}] unless score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run function obl:item/weapon/crack_of_dawn/ability/activate
# Крылатый Тигр
scoreboard players set @s[predicate=obl:holding/winged_tiger] obl.weapon.winged_tiger.reloading 0

###   О Ч И С Т К А
scoreboard players set @s obl.holding_rmb 0
execute if predicate obl:holding/crack_of_dawn unless score @s obl.weapon.crack_of_dawn.ability.cd matches 1.. run title @s clear