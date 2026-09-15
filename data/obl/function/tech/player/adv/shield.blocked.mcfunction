tag @s add obl.temp.victim
execute if entity @s[tag=obl.can_parry] on attacker run function obl:tech/parrying/direct/parry
advancement revoke @s only obl:tech/shield.blocked