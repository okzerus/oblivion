execute if entity @s[tag=!obl.invisible] unless entity @a[distance=..5] run function oblivion:abilities/events/blood_moon/psycho/enter_invis
execute if entity @s[tag=obl.invisible] if entity @a[distance=..5] run function oblivion:abilities/events/blood_moon/psycho/leave_invis

function oblivion:abilities/events/blood_moon/psycho/ambience