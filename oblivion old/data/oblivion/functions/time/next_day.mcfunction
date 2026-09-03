###   F U N C T I O N
execute as @a at @s run function oblivion:time/reset_event_scoreboards

execute if score count.week_day oblivion matches 7 run scoreboard players set count.week_day oblivion 0

execute in overworld run gamerule naturalRegeneration true
execute in overworld run gamerule mobGriefing true

scoreboard players add count.week_day oblivion 1
scoreboard players add count.month_day oblivion 1
scoreboard players add count.year_day oblivion 1
scoreboard players set next.blood_moon 0
scoreboard players set next.gravigeddon 0
scoreboard players set next.xmas_night 0
scoreboard players set next.pearl_moon 0
function oblivion:time/month_change

scoreboard players set obl.isday oblivion 1
execute if score blood_moon oblivion matches 1 run function oblivion:events/blood_moon/end
execute if score xmas_night oblivion matches 1 run function oblivion:events/xmas_night/end
execute if score pearl_moon oblivion matches 1 run function oblivion:events/pearl_moon/end
execute if score gravigeddon oblivion matches 1 run function oblivion:events/gravigeddon/end

execute as @a at @s run function oblivion:music/end

###   R A N D O M   E V E N T
execute if score count.week_day oblivion matches 7 run function oblivion:events/random_event
execute if score count.month oblivion matches 12 if score count.month_day oblivion matches 25 run function oblivion:events/merry_christmas

###   N E W   D A Y   A N N O U N C E M E N T
execute as @a if predicate oblivion:items/has.clock run function oblivion:time/announcement/clock
execute as @a if predicate oblivion:items/has.pda run function oblivion:time/announcement/pda

execute as @a[tag=obl.enchanted] run function oblivion:tech/altars/rituals/player_enchantment/remove




#bossbar remove oblivion:grinch
#bossbar remove oblivion:hunger
#bossbar remove oblivion:devil


scoreboard players set @a infectedvill 0

scoreboard players add @a[tag=obl.virusimmuny] immuny 1
execute as @a[tag=obl.virusimmuny] if score @s immuny matches 4.. run function oblivion:tech/disableimmuny