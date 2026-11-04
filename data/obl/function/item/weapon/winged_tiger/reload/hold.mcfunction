execute if score @s obl.savage matches 1.. run return 0
execute unless score @s obl.use matches 20.. run return 0

# 24 патрона потрачено -> эта перезарядка (1 сек) даёт 6 усиленных и 心
execute if score @s obl.use matches 20 if score @s obl.spent matches 24.. run return run function obl:tiantui/reload/full

# обычная перезарядка: +1 патрон каждую секунду удержания
scoreboard players operation #u obl.sys = @s obl.use
scoreboard players operation #u obl.sys %= #twenty obl.sys
execute if score #u obl.sys matches 1.. run return 0
execute if score @s obl.ammo matches 12.. run return 0
function obl:tiantui/reload/one
