tag @p add obl.target

execute if entity @a[distance=3..6,sort=nearest,limit=1,tag=obl.target] run function oblivion:abilities/bosses/cursed_armor/dashing/directions/forward.near
execute if entity @a[distance=6.0001..9,sort=nearest,limit=1,tag=obl.target] run function oblivion:abilities/bosses/cursed_armor/dashing/directions/forward
execute if entity @a[distance=9.0001..,sort=nearest,limit=1,tag=obl.target] run function oblivion:abilities/bosses/cursed_armor/dashing/directions/forward.far

tag @a remove obl.target