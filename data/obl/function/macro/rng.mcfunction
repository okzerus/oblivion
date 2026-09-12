# obl:macro/rng

# Использование в других функциях:
# scoreboard players set #range obl.rng <ЖЕЛАЕМЫЙ ДИАПАЗОН>
# execute store result storage obl:rng range int 1 run scoreboard players get #range obl.rng 
# function obl:macro/rng with storage obl:rng

# Вывод: Случайное число в счёте #value obl.rng от 1 до <ЖЕЛАЕМЫЙ ДИАПАЗОН>

$execute store result score #value obl.rng run random value 1..$(range)