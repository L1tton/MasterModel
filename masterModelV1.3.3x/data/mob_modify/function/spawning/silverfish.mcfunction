# Modiyfing Data
data merge entity @s {Health:8f,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:4},{id:"minecraft:max_health",base:16},{id:"minecraft:movement_speed",base:0.35},{id:"follow_range",base:24}]}

## Giving Effect
execute store result score random_storage random_storage run random value 1..10
execute if score random_storage random_storage matches 1 run effect give @s invisibility infinite 0 false



