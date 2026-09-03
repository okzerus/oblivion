execute if score @s obl.hungercombo matches 10..25 run function oblivion:items/hungersword/combo1end
execute if score @s obl.hungercombo matches 26..50 run function oblivion:items/hungersword/combo2end
execute if score @s obl.hungercombo matches 51..100 run function oblivion:items/hungersword/combo3end
execute if score @s obl.hungercombo matches 101..200 run function oblivion:items/hungersword/combo4end
execute if score @s obl.hungercombo matches 201.. run function oblivion:items/hungersword/combo5end

scoreboard players set @s obl.hungercombo 0