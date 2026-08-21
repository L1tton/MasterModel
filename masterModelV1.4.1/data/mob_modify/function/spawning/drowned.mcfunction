# Modiyfing Zombie Data
data merge entity @s {Health:20f,IsBaby:0b,CanBreakDoors:1b,Tags:["strong"],attributes:[{id:"minecraft:attack_damage",base:7.5},{id:"armor",base:3},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3},{id:"water_movement_efficiency",base:0.8},{id:"follow_range",base:48}]}

## Giving Zombie Gear

#weapon clear
item replace entity @s weapon.mainhand with air
#weapon give
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1..10 run item replace entity @s weapon.mainhand with trident[unbreakable={},custom_data={"weaponsmithing:weakness_weapon":{}},\
    lore=[{text:"潮汐的",color:gold,italic: true},\
    {text:" +束缚",color:"blue",italic: true},\
    {text:" Unbreakable!",color:"gold",italic: true,bold:true},\
    {text:"=================",color:dark_gray,italic: true},\
    {text:"救赎之道 就在其中",color:"dark_red",italic: false,bold:true}]]
execute if score random_storage random_storage matches 11..20 run item replace entity @s weapon.mainhand with iron_sword[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
execute if score random_storage random_storage matches 21..30 run item replace entity @s weapon.mainhand with fishing_rod
execute if score random_storage random_storage matches 31..33 run item replace entity @s weapon.offhand with gold_ingot

execute if score random_storage random_storage matches 1..30 run tag @s add mm.weapon_mainhand

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.weapon_mainhand] if score random_storage random_storage matches 1..10 run item modify entity @s weapon.mainhand mob_modify:enchant

## Is a baby?
execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1..5 run data merge entity @s {IsBaby:1b}

