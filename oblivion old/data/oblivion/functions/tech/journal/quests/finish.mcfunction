tellraw @s [{"text":"Зад","color":"#FEA0EE"},{"text":"ани","color":"#FFB2FA"},{"text":"е вып","color":"#FFC1FE"},{"text":"олн","color":"#FFD9FF"},{"text":"ено!","color":"#FFE8FF"}]
advancement grant @s only oblivion:advancements/journal/quests/root
advancement grant @s only oblivion:advancements/journal/root
playsound minecraft:ui.cartography_table.take_result player @s ~ ~ ~ 1 0.85
playsound minecraft:item.book.page_turn player @s ~ ~ ~ 1 1.4
playsound minecraft:entity.player.levelup player @s ~ ~ ~ 1 1.3
scoreboard players set @s obl.player_quest_progress 0