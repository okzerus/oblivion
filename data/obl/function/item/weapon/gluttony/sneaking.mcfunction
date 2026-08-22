scoreboard players add @s obl.weapon.gluttony.insatiable_hunger.interval 1 
tag @s add obl.temp
execute if score @s obl.weapon.gluttony.insatiable_hunger.interval matches 60.. as @e[type=item,distance=..30,limit=1,sort=nearest,nbt={PickupDelay:0s}] at @s run function obl:item/weapon/gluttony/item_tp
tag @s remove obl.temp 
execute unless score @s obl.weapon.gluttony.combo matches 1.. run effect give @s minecraft:hunger 1 0 true

