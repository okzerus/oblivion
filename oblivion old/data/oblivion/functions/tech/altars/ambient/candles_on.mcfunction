fill ~3 ~1 ~3 ~3 ~1 ~3 minecraft:black_candle[candles=3,lit=true] replace minecraft:black_candle[candles=3,lit=false]
fill ~-3 ~1 ~3 ~-3 ~1 ~3 minecraft:black_candle[candles=3,lit=true] replace minecraft:black_candle[candles=3,lit=false]
fill ~3 ~1 ~-3 ~3 ~1 ~-3 minecraft:black_candle[candles=3,lit=true] replace minecraft:black_candle[candles=3,lit=false]
fill ~-3 ~1 ~-3 ~-3 ~1 ~-3 minecraft:black_candle[candles=3,lit=true] replace minecraft:black_candle[candles=3,lit=false]
particle minecraft:flame ~3 ~1.3 ~3 0.1 0.3 0.1 0 10
particle minecraft:flame ~-3 ~1.3 ~3 0.1 0.3 0.1 0 10
particle minecraft:flame ~3 ~1.3 ~-3 0.1 0.3 0.1 0 10
particle minecraft:flame ~-3 ~1.3 ~-3 0.1 0.3 0.1 0 10
playsound minecraft:entity.blaze.shoot ambient @a ~3 ~1.3 ~3 0.5 1.7
playsound minecraft:entity.blaze.shoot ambient @a ~-3 ~1.3 ~3 0.5 1.7
playsound minecraft:entity.blaze.shoot ambient @a ~3 ~1.3 ~-3 0.5 1.7
playsound minecraft:entity.blaze.shoot ambient @a ~-3 ~1.3 ~-3 0.5 1.7