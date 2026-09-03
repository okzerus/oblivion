scoreboard players set count.month oblivion 1
scoreboard players set count.month_day oblivion 1
scoreboard players set count.year_day oblivion 1

scoreboard players add count.year oblivion 1
scoreboard players add count.leap_year oblivion 1
execute if score count.leap_year oblivion matches 4 run scoreboard players set count.leap_year oblivion 0

# Yes these additional functions are for leap year, I'm a fucking imbecile and I don't know why am I doing this.