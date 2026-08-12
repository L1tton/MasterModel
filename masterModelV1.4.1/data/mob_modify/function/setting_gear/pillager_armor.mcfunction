#helmet
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.head with leather_helmet

#chestplate
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.chest with leather_chestplate

#leggings
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.legs with leather_leggings

#boots
execute store result score random_storage random_storage run random value 1..20
execute if score random_storage random_storage matches 1..5 run item replace entity @s armor.feet with leather_boots




