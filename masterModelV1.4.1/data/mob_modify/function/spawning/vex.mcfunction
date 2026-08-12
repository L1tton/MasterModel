# Modiyfing Zombie Data
data merge entity @s {Health:14f,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:5},{id:"follow_range",base:48}]}

## Giving Zombie Gear

#weapon give
item replace entity @s weapon.mainhand with iron_sword[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
tag @s add mm.weapon_mainhand

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.weapon_mainhand] if score random_storage random_storage matches 1..40 run item modify entity @s weapon.mainhand mob_modify:enchant


