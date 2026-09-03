###   J A N U A R Y
execute if score count.month oblivion matches 1 if score count.month_day oblivion matches 32 run function oblivion:time/months/01_january
###   F E B R U A R Y
execute if score count.year oblivion matches 1.. if score count.month oblivion matches 2 if score count.month_day oblivion matches 29 run function oblivion:time/months/02_february
execute unless score count.year oblivion matches 1.. if score count.month oblivion matches 2 if score count.month_day oblivion matches 30 run function oblivion:time/months/02_february
###   M A R C H
execute if score count.month oblivion matches 3 if score count.month_day oblivion matches 32 run function oblivion:time/months/03_march
###   A P R I L
execute if score count.month oblivion matches 4 if score count.month_day oblivion matches 31 run function oblivion:time/months/04_april
###   M A Y
execute if score count.month oblivion matches 5 if score count.month_day oblivion matches 32 run function oblivion:time/months/05_may
###   J U N E
execute if score count.month oblivion matches 6 if score count.month_day oblivion matches 31 run function oblivion:time/months/06_june
###   J U L Y
execute if score count.month oblivion matches 7 if score count.month_day oblivion matches 32 run function oblivion:time/months/07_july
###   A U G U S T
execute if score count.month oblivion matches 8 if score count.month_day oblivion matches 32 run function oblivion:time/months/08_august
###   S E P T E M B E R
execute if score count.month oblivion matches 9 if score count.month_day oblivion matches 31 run function oblivion:time/months/09_september
###   O C T O B E R
execute if score count.month oblivion matches 10 if score count.month_day oblivion matches 32 run function oblivion:time/months/10_october
###   N O V E M B E R
execute if score count.month oblivion matches 11 if score count.month_day oblivion matches 31 run function oblivion:time/months/11_november
###   D E C E M B E R
execute if score count.month oblivion matches 12 if score count.month_day oblivion matches 32 run function oblivion:time/months/12_december