###   Р А Д И У С   З А В И С И Т   О Т   В Ы С О Т Ы   П А Д Е Н И Я
# fall_count ~10 (порог входа) -> радиус 0; fall_count ~60 (~100 блоков падения) -> радиус 3 (максимум, как у крипера)
scoreboard players operation #radius obl = @s obl.parry.fall_count
scoreboard players operation #radius obl /= #twenty obl.const
execute if score #radius obl matches 4.. run scoreboard players set #radius obl 3

scoreboard players operation #side obl = #radius obl
scoreboard players operation #side obl *= #two obl.const
scoreboard players add #side obl 1

scoreboard players operation #total obl = #side obl
scoreboard players operation #total obl *= #side obl
scoreboard players operation #total obl *= #side obl

###   С П Е Ц Э Ф Ф Е К Т Ы
particle minecraft:explosion_emitter ~ ~ ~ 0 0 0 0 1
playsound minecraft:entity.generic.explode hostile @a ~ ~ ~ 1 1

###   Р А З Р У Ш Е Н И Е   ( р е к у р с и в н ы й   п е р е б о р   с ф е р ы )
scoreboard players set #i obl 0
function obl:tech/parrying/fall/explode.cell
