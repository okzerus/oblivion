### С Ч Ё Т Ч И К И

## Операции
scoreboard objectives add obl.const dummy
scoreboard players set #zero obl.const 0
scoreboard players set #two obl.const 2
## Разное
scoreboard objectives add obl.frozen_spawners dummy
scoreboard players set #frozen_spawners obl.frozen_spawners 0
scoreboard objectives add obl.spawner.id dummy
scoreboard objectives add obl dummy
scoreboard objectives add obl.id dummy
scoreboard objectives add obl.health dummy
scoreboard objectives add obl.health_old dummy
scoreboard objectives add obl.damage_taken dummy
scoreboard objectives add obl.holding_rmb dummy
scoreboard objectives add obl.effect.scorchfield.count dummy
scoreboard objectives add obl.effect.scorchfield.decay dummy
scoreboard objectives add obl.effect.scorch.tick dummy
scoreboard objectives add obl.effect.scorch.strength dummy
scoreboard objectives add obl.effect.scorch.interval dummy
scoreboard objectives add obl.weapon.crack_of_dawn.ability.cd dummy
scoreboard objectives add obl.hit_cooldown dummy
scoreboard objectives add obl.spawner.id dummy
scoreboard objectives add obl.weapon.gluttony.combo dummy
scoreboard objectives add obl.weapon.gluttony.decay dummy
scoreboard objectives add obl.weapon.gluttony.fangs dummy
scoreboard objectives add obl.double_sneak.time dummy
scoreboard objectives add obl.sneaking dummy
scoreboard objectives add obl.weapon.gluttony.insatiable_hunger.interval dummy 

scoreboard objectives add obl.weapon.was_using.crack_of_dawn dummy

### Отладка
scoreboard objectives setdisplay sidebar obl.holding_rmb



### К О Н Е Ц
execute unless score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully installed", "color": "#203ee6","bold": true}
execute if score first_load obl matches 1 run tellraw @a {"text": "oblivion datapack successfully reloaded", "color": "#203ee6","bold": true}
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
scoreboard players set first_load obl 1