execute unless entity @s[nbt={Inventory:[{Slot:103b}]}] run tag @s add obl.noarmor1
execute unless entity @s[nbt={Inventory:[{Slot:102b}]}] run tag @s add obl.noarmor2
execute unless entity @s[nbt={Inventory:[{Slot:101b}]}] run tag @s add obl.noarmor3
execute unless entity @s[nbt={Inventory:[{Slot:100b}]}] run tag @s add obl.noarmor4
execute unless entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s add obl.noarmor5
execute unless entity @s[nbt={SelectedItem:{}}] run tag @s add obl.noarmor6
execute if entity @s[nbt={SelectedItem:{tag:{bloodknife:1b}}}] run tag @s add obl.noarmor6
execute if entity @s[nbt={Inventory:[{Slot:103b}]}] run tag @s remove obl.noarmor1
execute if entity @s[nbt={Inventory:[{Slot:102b}]}] run tag @s remove obl.noarmor2
execute if entity @s[nbt={Inventory:[{Slot:101b}]}] run tag @s remove obl.noarmor3
execute if entity @s[nbt={Inventory:[{Slot:100b}]}] run tag @s remove obl.noarmor4
execute if entity @s[nbt={Inventory:[{Slot:-106b}]}] run tag @s remove obl.noarmor5
execute if entity @s[nbt={SelectedItem:{}}] unless entity @s[nbt={SelectedItem:{tag:{bloodknife:1b}}}] run tag @s remove obl.noarmor6
execute as @a[tag=obl.noarmor] unless entity @s[tag=obl.noarmor1] run function oblivion:items/accs/weapons/knife/removetag
execute as @a[tag=obl.noarmor] unless entity @s[tag=obl.noarmor2] run function oblivion:items/accs/weapons/knife/removetag
execute as @a[tag=obl.noarmor] unless entity @s[tag=obl.noarmor3] run function oblivion:items/accs/weapons/knife/removetag
execute as @a[tag=obl.noarmor] unless entity @s[tag=obl.noarmor4] run function oblivion:items/accs/weapons/knife/removetag
execute as @a[tag=obl.noarmor] unless entity @s[tag=obl.noarmor5] run function oblivion:items/accs/weapons/knife/removetag
execute as @a[tag=obl.noarmor] unless entity @s[tag=obl.noarmor6] run function oblivion:items/accs/weapons/knife/removetag
execute as @a[tag=obl.noarmor1,tag=obl.noarmor2,tag=obl.noarmor3,tag=obl.noarmor4,tag=obl.noarmor5,tag=obl.noarmor6,tag=!obl.noarmor] run playsound minecraft:entity.shulker.shoot hostile @a[distance=..6] ~ ~ ~ 1 1.3
execute as @a[tag=obl.noarmor1,tag=obl.noarmor2,tag=obl.noarmor3,tag=obl.noarmor4,tag=obl.noarmor5,tag=obl.noarmor6,tag=!obl.noarmor] run particle flash ~ ~1 ~
execute as @a[tag=obl.noarmor1,tag=obl.noarmor2,tag=obl.noarmor3,tag=obl.noarmor4,tag=obl.noarmor5,tag=obl.noarmor6] run tag @s add obl.noarmor

execute if entity @s[tag=obl.noarmor] unless entity @s[nbt={SelectedItem:{}}] run effect give @s invisibility 2 9 true
execute if entity @s[tag=obl.noarmor,nbt={SelectedItem:{tag:{bloodknife:1b}}}] run effect give @s invisibility 2 9 true
execute if entity @s[tag=obl.noarmor,nbt={SelectedItem:{tag:{bloodknife:1b}}}] run effect give @s strength 2 2 true