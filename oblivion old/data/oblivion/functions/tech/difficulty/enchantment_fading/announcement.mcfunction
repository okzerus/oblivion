tellraw @s {"text":"Ваши чары увядают...","color":"#BF4AC1"}
tellraw @s [{"text":"> ","color":"#BF4AC1"},{"text":"Кажется, зачарования на удерживаемом предмете\n \u0020 рассеиваются по мере использования, поскольку\n \u0020 слишком слабы.\n \u0020 Или, может дело в вас?","color":"#d393e9"}]

tag @s[advancements={oblivion:advancements/journal/list/enchantment_fading=false}] add obl.journal.enchantment_fading
scoreboard players set @s[advancements={oblivion:advancements/journal/list/enchantment_fading=false}] obl.journal_delay 200