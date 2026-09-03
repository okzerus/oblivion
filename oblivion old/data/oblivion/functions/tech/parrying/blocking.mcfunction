# from advancements/tech/shield_using

###   F U N C T I O N
scoreboard players set @s obl.shield_using 1
scoreboard players set @s obl.shield_cleanup 0
tag @s remove obl.can_parry.projectile
tag @s remove obl.can_parry.direct

###   P A R R Y   F R A M E S
execute if score @s obl.shield_using matches 1 run scoreboard players add @s obl.shield_preparing 1
# Skip through parry frames if on parry cd
execute if score @s obl.parry.cd matches 1.. run scoreboard players set @s obl.shield_preparing 16
execute if score @s obl.parry.spam_cd matches 1.. run scoreboard players set @s obl.shield_preparing 16
# Parry frame for projectiles
execute if score @s obl.shield_preparing matches 1..5 run tag @s add obl.can_parry.projectile
# Parry frame for direct attacks
execute if score @s obl.shield_preparing matches 5..15 run tag @s add obl.can_parry.direct

###   C L E A N U P
advancement revoke @s only oblivion:tech/shield_using