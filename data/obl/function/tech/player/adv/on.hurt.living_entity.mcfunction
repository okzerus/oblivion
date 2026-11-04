###   Ф У Н К Ц И И
## Переход в режим боя
scoreboard players operation #id_transfer obl = @s obl.id
function obl:tech/combat/enter
execute on attacker run function obl:tech/combat/enter

# Очистка
advancement revoke @s only obl:tech/on.hurt.living_entity
tag @s remove obl.temp.combat.hurt