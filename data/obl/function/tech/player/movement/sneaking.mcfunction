###   Т И К   Ш И Ф Т А
scoreboard players add @s obl.sneaking 1

###   О Б Н А Р У Ж Е Н И Е   Д В О Й Н О Г О   Н А Ж А Т И Я
execute if score @s obl.double_sneak.time matches 1.. run function oblivion:tech/double_sneak

###   О Р У Ж И Я
# Чревоугодие
execute if predicate obl:holding/gluttony run function obl:item/weapon/gluttony/sneaking
## старый код
#execute unless score @s obl.used.cursed_armor_sword matches 1 if predicate oblivion:items/hold.cursedarmor.both anchored eyes run function oblivion:items/abilities/cursed_armor_sword/ability
#execute unless entity @s[tag=obl.empowered.murasama] if predicate oblivion:items/hold.murasama.both run scoreboard players add @s obl.murasama.startup.ripper 1
#execute unless entity @s[tag=obl.empowered.murasama] if score @s obl.murasama.blood matches 75.. if score @s obl.murasama.startup.ripper matches 1 run effect give @s darkness 10 0 true
#execute unless entity @s[tag=obl.empowered.murasama] if score @s obl.murasama.blood matches 75.. if score @s obl.murasama.startup.ripper matches 1 run playsound minecraft:block.beacon.activate hostile @s ~ ~ ~ 1 1.7
#execute unless entity @s[tag=obl.empowered.murasama] if score @s obl.murasama.blood matches 75.. if score @s obl.murasama.startup.ripper matches 20 run function oblivion:items/abilities/murasama/ripper
#execute unless entity @s[tag=obl.empowered.murasama] unless score @s obl.murasama.blood matches 75.. if score @s obl.murasama.startup.ripper matches 8.. run title @s actionbar [{"text":"[","color":"#9C1111"},{"text":" Недостаточно крови!","color":"#D11212"},{"text":" ]","color":"#9C1111"}]

## Отладка
execute if entity @s[tag=obl.debug.movement] run say мыш (кродеться)




############# старый код

###   B O S S   T R A N S I T I O N   S K I P
#execute if entity @s[tag=obl.can_skip_transition,scores={obl.player_sneaking=1..}] run function oblivion:abilities/bosses/transitions/skipping.process

###   E M P O W E R E R S
#execute if score @s obl.difficulty matches 1.. unless score @s obl.used.emp.epsilon matches 1 if predicate oblivion:items/hold.emp.epsilon run function oblivion:items/empowerers/epsilon/ability
#execute if score @s obl.difficulty matches 3.. unless score @s obl.used.emp.psi matches 1 if predicate oblivion:items/hold.emp.psi run function oblivion:items/empowerers/psi/ability
#execute if score @s obl.difficulty matches 5.. unless score @s obl.used.emp.sigma matches 1 if predicate oblivion:items/hold.emp.sigma run function oblivion:items/empowerers/sigma/ability
#execute if score @s obl.difficulty matches 7.. unless score @s obl.used.emp.omega matches 1 if predicate oblivion:items/hold.emp.omega run function oblivion:items/empowerers/omega/ability
#execute if score @s obl.difficulty matches 2.. unless score @s obl.used.emp.shanty matches 1 if predicate oblivion:items/hold.emp.shanty if predicate oblivion:biome.any_ocean run function oblivion:items/empowerers/shanty/ability
#execute if score @s obl.difficulty matches 3.. unless score @s obl.used.emp.instinct matches 1 if predicate oblivion:items/hold.emp.instinct run function oblivion:items/empowerers/instinct/ability
#execute if score @s obl.difficulty matches 3.. unless score @s obl.used.emp.elixir matches 1 if predicate oblivion:items/hold.emp.elixir run function oblivion:items/empowerers/elixir/ability
#execute if score @s obl.difficulty matches 2.. unless score @s obl.used.emp.pact matches 1 if predicate oblivion:items/hold.emp.pact run function oblivion:items/empowerers/pact/ability

###   A C C E S S O R I E S
#execute if entity @s[tag=obl.equipped.accs.storm_bottle,tag=!obl.storm_bottle.double_jumped] unless predicate oblivion:on.ground run function oblivion:items/accs/storm_bottle/double_jump

###   O B L I V I O N   M O N O C L E
#execute if entity @s[tag=obl.equipped.accs.oblivion_monocle,tag=obl.temp.found_entity] run scoreboard players add @s obl.monocle.time 1
#execute if score @s obl.monocle.time matches 10.. run function oblivion:items/accs/oblivion_monocle/modes/show
#execute if score @s obl.monocle.time matches 25.. run function oblivion:items/accs/oblivion_monocle/modes/change