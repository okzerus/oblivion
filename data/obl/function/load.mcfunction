### С Ч Ё Т Ч И К И

## Операции
scoreboard objectives add obl.const dummy
scoreboard players set #zero obl.const 0
scoreboard players set #two obl.const 2
scoreboard players set #three obl.const 3
scoreboard players set #four obl.const 4
scoreboard players set #ten obl.const 10
scoreboard players set #100 obl.const 100
scoreboard players set #1000 obl.const 1000
scoreboard players set #10000 obl.const 10000
scoreboard objectives add obl.time_of_day dummy
execute store result score #time obl.time_of_day run time query day
## Разное
scoreboard objectives add obl.frozen_spawners dummy
scoreboard players set #frozen_spawners obl.frozen_spawners 0
scoreboard objectives add obl.spawner.id dummy
scoreboard objectives add obl dummy
scoreboard objectives add obl.id dummy
scoreboard objectives add obl.id.combat dummy
scoreboard objectives add obl.in_combat dummy
scoreboard objectives add obl.server_tick dummy
scoreboard objectives add obl.server_tick.check dummy
scoreboard objectives add obl.random dummy
scoreboard objectives add obl.ego.withdraw_progress dummy
scoreboard objectives add obl.p1 dummy
scoreboard objectives add obl.p2 dummy
scoreboard objectives add obl.health dummy
scoreboard objectives add obl.health_old dummy
scoreboard objectives add obl.damage_taken dummy
scoreboard objectives add obl.holding_rmb dummy
scoreboard objectives add obl.using_shield dummy
scoreboard objectives add obl.shield.cleanup dummy
scoreboard objectives add obl.shield.preparing dummy
scoreboard objectives add obl.attribute.gravity dummy
data modify storage obl:stun s set value ["","■","■■","■■■","■■■■","■■■■■","■■■■■■","■■■■■■■","■■■■■■■■","■■■■■■■■■","■■■■■■■■■■"]
scoreboard objectives add obl.effect.stun.tick dummy
scoreboard objectives add obl.effect.stun.max dummy
scoreboard objectives add obl.effect.scorchfield.count dummy
scoreboard objectives add obl.effect.scorchfield.decay dummy
scoreboard objectives add obl.effect.scorch.tick dummy
scoreboard objectives add obl.effect.scorch.interval dummy
scoreboard objectives add obl.effect.scorch.intensity dummy
scoreboard objectives add obl.effect.scorch.potency dummy
scoreboard objectives add obl.effect.tremor.tick dummy
scoreboard objectives add obl.effect.tremor.count dummy
scoreboard objectives add obl.effect.tremor.decay dummy
scoreboard objectives add obl.effect.tremor.decay_max dummy
scoreboard objectives add obl.effect.tremor_burst.tick dummy
scoreboard objectives add obl.effect.bleed.tick dummy
scoreboard objectives add obl.effect.bleed.intensity dummy
scoreboard objectives add obl.effect.bleed.interval dummy
scoreboard objectives add obl.effect.bleed.potency dummy
scoreboard objectives add obl.effect.bleed.count dummy
scoreboard objectives add obl.effect.regen.tick dummy
scoreboard objectives add obl.effect.regen.intensity dummy
scoreboard objectives add obl.effect.regen.interval dummy
scoreboard objectives add obl.effect.regen.potency dummy
scoreboard objectives add obl.effect.regen.count dummy
scoreboard objectives add obl.hit_cooldown dummy
scoreboard objectives add obl.spawner.id dummy
scoreboard objectives add obl.spawner.death_count dummy
scoreboard objectives add obl.spawner.difficulty dummy
scoreboard objectives add obl.weapon.crack_of_dawn.ability.cd dummy
scoreboard objectives add obl.weapon.gluttony.combo dummy
scoreboard objectives add obl.weapon.gluttony.decay dummy
scoreboard objectives add obl.weapon.gluttony.fangs dummy
scoreboard objectives add obl.double_sneak.time dummy
scoreboard objectives add obl.sneaking dummy
scoreboard objectives add obl.jumping minecraft.custom:minecraft.jump
scoreboard objectives add obl.falling_distance dummy
scoreboard objectives add obl.weapon.gluttony.insatiable_hunger.interval dummy
scoreboard objectives add obl.weapon.fanged_assassin.autumn_red dummy
scoreboard objectives add obl.weapon.fanged_assassin.autumn_red.cd dummy
scoreboard objectives add obl.weapon.fanged_assassin.fox_dance.cd dummy
scoreboard objectives add obl.weapon.fanged_assassin.fox_dance.ray dummy
scoreboard objectives add obl.weapon.fanged_assassin.accelerando dummy
scoreboard objectives add obl.weapon.winged_tiger.hud_mode dummy
scoreboard objectives add obl.weapon.winged_tiger.ammo.normal dummy
scoreboard objectives add obl.weapon.winged_tiger.ammo.savage dummy
scoreboard objectives add obl.weapon.winged_tiger.ammo_spent dummy
scoreboard objectives add obl.weapon.winged_tiger.reloading dummy
scoreboard objectives add obl.weapon.winged_tiger.active dummy
scoreboard objectives add obl.weapon.winged_tiger.tanglecleaver.cd dummy
scoreboard objectives add obl.effect.rage dummy
scoreboard objectives add obl.weapon.psycho_knife.cd dummy
scoreboard objectives add obl.weapon.viking_axe.cd dummy
### Парирование
scoreboard objectives add obl.parry.cd dummy
scoreboard objectives add obl.parry.count dummy
scoreboard objectives add obl.parry.tick dummy
scoreboard objectives add obl.parry.after_tick dummy
scoreboard objectives add obl.parry.spam_cd dummy
scoreboard objectives add obl.parried_by_id dummy
scoreboard objectives add obl.parried_decay dummy
scoreboard objectives add obl.parried_tnt.fuse dummy
scoreboard objectives add obl.parried_anvil.count dummy
scoreboard objectives add obl.parried_item.speed_sq dummy
scoreboard objectives add obl.parried_item.speed_sq.old dummy
scoreboard objectives add obl.parried_item.motion_y.old dummy



scoreboard objectives add obl.empower.damage_test dummy


scoreboard objectives add obl.weapon.was_using.crack_of_dawn dummy

### Отладка
scoreboard objectives setdisplay sidebar obl.weapon.fanged_assassin.autumn_red



### К О Н Е Ц
execute unless score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully installed", "color": "#203ee6","bold": true}
execute if score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully reloaded", "color": "#203ee6","bold": true}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set first_load obl 1