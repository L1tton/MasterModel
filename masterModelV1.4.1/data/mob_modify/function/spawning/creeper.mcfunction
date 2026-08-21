# Spawning New Skeleton
summon creeper ~ ~ ~ {Health:20f,powered:0b,ExplosionRadius:4b,Fuse:25,Tags:["still_spawning","strong"],attributes:[{id:"minecraft:max_health",base:30},{id:"movement_speed",base:0.32}]}
data modify entity @e[type=creeper,tag=still_spawning,distance=..1,limit=1,sort=nearest] Rotation set from entity @s Rotation
data modify entity @e[type=creeper,tag=still_spawning,distance=..1,limit=1,sort=nearest] Motion set from entity @s Motion
## Random chance for powered creeper
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1 run data merge entity @e[type=creeper,distance=..1,tag=still_spawning,limit=1] {powered:1b,ExplosionRadius:7b}
execute if score random_storage random_storage matches 1 at @s run playsound entity.lightning_bolt.thunder weather @a ~ ~ ~ 3

tag @e[type=creeper,distance=..1,tag=still_spawning,limit=1] remove still_spawning

# Killing Original Mob
tag @s add strong
tp @s ~ ~-400 ~



