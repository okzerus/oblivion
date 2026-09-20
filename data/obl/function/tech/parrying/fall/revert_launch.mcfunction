###   В О З В Р А Щ А Е М   О Б Ы Ч Н У Ю   Г Р А В И Т А Ц И Ю
execute store result storage obl:fall value double 0.000001 run scoreboard players get @s obl.parry.fall_gravity
function obl:tech/parrying/fall/restore_gravity with storage obl:fall

scoreboard players set @s obl.parry.fall_launch -1
