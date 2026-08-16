###   О П О В Е Щ Е Н И Е
title @s times 0 10 0
title @s title {"text":""}
title @s subtitle {"text":"СЕЙЧАС!","italic":true,"color":"#eb5721"}



###   Ф У Н К Ц И И
tag @s add obl.hit_em_harder
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1.5 1.65
effect clear @s[tag=obl.custom_darkness] darkness 
effect clear @s[tag=obl.custom_slowness] slowness 