scoreboard players remove @s obl.journal_delay 1

execute if entity @s[tag=obl.journal.enchantment_fading] if score @s obl.journal_delay matches 0 run function oblivion:tech/journal/notes/list/enchantment_fading