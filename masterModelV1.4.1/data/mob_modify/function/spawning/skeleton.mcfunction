# Modiyfing Skeleton Data
data merge entity @s {Health:20f,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:3},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.35},{id:"movement_efficiency",base:1},{id:"follow_range",base:48}]}

## Giving Skeleton Gear

#weapon give
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1 run item replace entity @s weapon.mainhand with bow[enchantments={power:5},use_effects={speed_multiplier:0.8},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 2..3 run item replace entity @s weapon.mainhand with bow[enchantments={power:4},use_effects={speed_multiplier:0.8},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 4..7 run item replace entity @s weapon.mainhand with bow[enchantments={power:3},use_effects={speed_multiplier:0.8},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 8..15 run item replace entity @s weapon.mainhand with bow[enchantments={power:2},use_effects={speed_multiplier:0.8},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 16..31 run item replace entity @s weapon.mainhand with bow[enchantments={power:1},use_effects={speed_multiplier:0.8},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]

execute if score random_storage random_storage matches 1..31 run tag @s add mm.weapon_mainhand

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.weapon_mainhand] if score random_storage random_storage matches 1..10 run item modify entity @s weapon.mainhand mob_modify:enchant


