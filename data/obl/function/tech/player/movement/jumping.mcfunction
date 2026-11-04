tag @s add obl.jumped
scoreboard players set @s obl.jumping 0

## Под эффектом кровотечения
scoreboard players remove @s[tag=obl.effect.bleed] obl.effect.bleed.interval 25

## Использование "Рассечения" Крылатого Тигра
execute if entity @s[tag=obl.weapon.winged_tiger.tanglecleaver_window] run function obl:item/weapon/winged_tiger/ability/tanglecleaver/jump