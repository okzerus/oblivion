particle electric_spark ~ ~2.5 ~ 0.35 0.35 0.35 0.01 3

execute align xz run tp @s ~.5 ~ ~.5 ~ 70
scoreboard players add @s[tag=!obl.infinite_stun] obl.stun 1
execute if score @s obl.stun matches 100.. run function oblivion:tech/stun_disabled