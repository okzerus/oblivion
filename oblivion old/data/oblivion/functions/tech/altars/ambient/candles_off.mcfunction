fill ~3 ~1 ~3 ~3 ~1 ~3 minecraft:black_candle[candles=3,lit=false] replace minecraft:black_candle[candles=3,lit=true]
fill ~-3 ~1 ~3 ~-3 ~1 ~3 minecraft:black_candle[candles=3,lit=false] replace minecraft:black_candle[candles=3,lit=true]
fill ~3 ~1 ~-3 ~3 ~1 ~-3 minecraft:black_candle[candles=3,lit=false] replace minecraft:black_candle[candles=3,lit=true]
fill ~-3 ~1 ~-3 ~-3 ~1 ~-3 minecraft:black_candle[candles=3,lit=false] replace minecraft:black_candle[candles=3,lit=true]
particle minecraft:large_smoke ~3 ~1.3 ~3 0.1 0.3 0.1 0 10
particle minecraft:large_smoke ~-3 ~1.3 ~3 0.1 0.3 0.1 0 10
particle minecraft:large_smoke ~3 ~1.3 ~-3 0.1 0.3 0.1 0 10
particle minecraft:large_smoke ~-3 ~1.3 ~-3 0.1 0.3 0.1 0 10
playsound minecraft:block.fire.extinguish ambient @a ~3 ~1.3 ~3 0.5 0.7
playsound minecraft:block.fire.extinguish ambient @a ~-3 ~1.3 ~3 0.5 0.7
playsound minecraft:block.fire.extinguish ambient @a ~3 ~1.3 ~-3 0.5 0.7
playsound minecraft:block.fire.extinguish ambient @a ~-3 ~1.3 ~-3 0.5 0.7