#helmet
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.head with golden_helmet
execute if score random_storage random_storage matches 1..5 run tag @s add mm.helmet

#chestplate
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.chest with golden_chestplate
execute if score random_storage random_storage matches 1..5 run tag @s add mm.chestplate

#leggings
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.legs with golden_leggings
execute if score random_storage random_storage matches 1..5 run tag @s add mm.leggings

#boots
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.feet with golden_boots
execute if score random_storage random_storage matches 1..5 run tag @s add mm.boots

##enchant
execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.helmet] if score random_storage random_storage matches 1..30 run item modify entity @s armor.head mob_modify:enchant

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.chestplate] if score random_storage random_storage matches 1..30 run item modify entity @s armor.chest mob_modify:enchant

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.leggings] if score random_storage random_storage matches 1..30 run item modify entity @s armor.legs mob_modify:enchant

execute store result score random_storage random_storage run random value 1..100
execute if entity @s[tag=mm.boots] if score random_storage random_storage matches 1..30 run item modify entity @s armor.feet mob_modify:enchant






