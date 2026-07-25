data merge entity @s {Health:15,Tags:["strong"],ExplosionPower:3,attributes:[{id:"minecraft:max_health",base:15},{id:"flying_speed",base:0.08}]}

execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1 run effect give @s invisibility 90 0 false
execute if score random_storage random_storage matches 1 at @s run playsound ambient.cave ambient @a ~ ~ ~ 5
execute if score random_storage random_storage matches 1 at @s run data merge entity @s {ExplosionPower:4,attributes:[{id:"flying_speed",base:0.04},{id:"minecraft:max_health",base:5}]}