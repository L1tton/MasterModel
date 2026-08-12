data merge entity @s {Health:20f,IsBaby:0b,Tags:["strong"],attributes:[{id:"armor",base:4},{id:"minecraft:attack_damage",base:9},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.4},{id:"follow_range",base:32}]}

function mob_modify:setting_gear/piglin_armor

#weapon clear
item replace entity @s weapon.mainhand with air
#weapon give
execute store result score random_storage random_storage run random value 1..2
execute if score random_storage random_storage matches 1 run item replace entity @s weapon.mainhand with crossbow[max_damage=1160,lore=["传奇的"],custom_data={"mastermodel:epic_tool":{}},enchantments={piercing:1}]
execute if score random_storage random_storage matches 2 run item replace entity @s weapon.mainhand with golden_sword[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]

execute store result score random_storage random_storage run random value 1..2
execute if score random_storage random_storage matches 1 run item modify entity @s weapon.mainhand mob_modify:enchant

## Is a baby?
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1..10 run data merge entity @s {IsBaby:1b}
