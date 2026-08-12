data merge entity @s {Health:20f,CanBreakDoors:1b,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:8},{id:"armor_toughness",base:20},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3},{id:"follow_range",base:48}]}

#weapon give
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1 run item replace entity @s weapon.mainhand with netherite_sword[custom_data={"mastermodel:old_tool":{}},lore=["原版的"]]
execute if score random_storage random_storage matches 2..20 run item replace entity @s weapon.mainhand with stone_sword[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]

