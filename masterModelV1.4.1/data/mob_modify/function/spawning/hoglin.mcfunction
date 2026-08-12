# Modiyfing Data
data merge entity @s {Health:50f,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:9},{id:"minecraft:knockback_resistance",base:0.75},{id:"attack_knockback",base:2},{id:"minecraft:max_health",base:50},{id:"minecraft:movement_speed",base:0.33},{id:"follow_range",base:24}]}

## Giving Effect
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1 run effect give @s fire_resistance infinite 0 false





