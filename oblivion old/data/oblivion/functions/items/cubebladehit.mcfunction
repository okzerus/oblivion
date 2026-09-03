advancement revoke @a only oblivion:items/cubebladehit

# Function (particles, effects, sounds)

tag @s add obl.avoidhit
execute as @e[sort=nearest,limit=1,nbt={HurtTime:10s},distance=..5] at @s unless entity @e[tag=obl.wasdamaged] run function oblivion:items/cubeblade/hit