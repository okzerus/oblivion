execute unless entity @s[tag=obl.weapon.psycho_knife.stealth_from_passive] unless score @s obl.weapon.psycho_knife.cd matches 1.. unless entity @s[tag=obl.weapon.psycho_knife.stealth_from_effect] if predicate obl:effects/has.invisibility run function obl:item/weapon/psycho_knife/enter_stealth_from_effect
execute unless entity @s[tag=obl.weapon.psycho_knife.stealth_from_effect] unless score @s obl.weapon.psycho_knife.cd matches 1.. unless entity @s[tag=obl.weapon.psycho_knife.stealth_from_passive] unless predicate obl:has.armor unless predicate obl:has.offhand if predicate obl:is.sneaking run function obl:item/weapon/psycho_knife/enter_stealth_from_passive

execute if entity @s[tag=obl.weapon.psycho_knife.stealth] run title @s actionbar "[ [ [  Скрытность  ] ] ]"

execute unless predicate obl:is.sneaking unless entity @s[tag=obl.weapon.psycho_knife.stealth_from_effect] if entity @s[tag=obl.weapon.psycho_knife.stealth] run function obl:item/weapon/psycho_knife/revert
execute if entity @s[tag=obl.weapon.psycho_knife.stealth_from_effect] unless predicate obl:effects/has.invisibility if entity @s[tag=obl.weapon.psycho_knife.stealth] run function obl:item/weapon/psycho_knife/revert
execute if entity @s[tag=obl.weapon.psycho_knife.stealth_from_passive] run effect give @s invisibility 1 9 true

execute as @s[scores={obl.weapon.psycho_knife.cd=1..}] run scoreboard players remove @s obl.weapon.psycho_knife.cd 1