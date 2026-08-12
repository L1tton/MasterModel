# Modiyfing Zombie Data
data merge entity @s {Health:20f,IsBaby:0b,CanBreakDoors:1b,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:5.5},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.25},{id:"follow_range",base:48}]}

## Giving Zombie Gear


#weapon clear
item replace entity @s weapon.mainhand with air
#weapon give
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1 run item replace entity @s weapon.mainhand with iron_axe[custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 2..3 run item replace entity @s weapon.mainhand with iron_sword[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 4..7 run item replace entity @s weapon.mainhand with iron_hoe[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 8..15 run item replace entity @s weapon.mainhand with iron_pickaxe[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]

execute if score random_storage random_storage matches 1..15 run tag @s add mm.weapon_mainhand

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.weapon_mainhand] if score random_storage random_storage matches 1..10 run item modify entity @s weapon.mainhand mob_modify:enchant

## Is a baby?
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1..5 run data merge entity @s {IsBaby:1b}

