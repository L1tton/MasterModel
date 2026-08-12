# Modifying Pillager Data
data merge entity @s {Health:24f,Tags:["strong"],equipment:{mainhand:{id:"minecraft:crossbow",count:1}},attributes:[{id:"armor",base:4},{id:"minecraft:max_health",base:32},{id:"minecraft:movement_speed",base:0.4}]}

## Giving the pillager its gear
#armor
function mob_modify:setting_gear/pillager_armor

#weapon
execute store result score random_storage random_storage run random value 1..80
execute if score random_storage random_storage matches 1..10 run item replace entity @s weapon.offhand with tipped_arrow[potion_contents={potion:"minecraft:slowness"}] 6
execute if score random_storage random_storage matches 11..20 run item replace entity @s weapon.offhand with tipped_arrow[potion_contents={potion:"minecraft:weakness"}] 6
execute if score random_storage random_storage matches 21..30 run item replace entity @s weapon.offhand with tipped_arrow[potion_contents={potion:"minecraft:harming"}] 5
execute if score random_storage random_storage matches 31..40 run item replace entity @s weapon.offhand with tipped_arrow[potion_contents={potion:"minecraft:poison"}] 7
execute if score random_storage random_storage matches 41..60 run item replace entity @s weapon.offhand with emerald


execute store result score random_storage random_storage run random value 1..100
execute if score random_storage random_storage matches 1..60 run item modify entity @s weapon.mainhand mob_modify:enchant

