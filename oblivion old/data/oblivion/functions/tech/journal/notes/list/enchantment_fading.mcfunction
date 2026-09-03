function oblivion:tech/journal/notes/main
tellraw @s [{"text":"> ","color":"#FFE8FF"},{"text":"Увядание чар","color":"yellow"}]

advancement grant @s only oblivion:advancements/journal/notes/list/enchantment_fading
tag @s remove obl.journal.enchantment_fading