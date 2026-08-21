data merge entity @s {Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:2.5},{id:"attack_knockback",base:0.1},{id:"knockback_resistance",base:0.1},{id:"follow_range",base:24}]}

##精英大怪
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1 run data merge entity @s {Size:6}