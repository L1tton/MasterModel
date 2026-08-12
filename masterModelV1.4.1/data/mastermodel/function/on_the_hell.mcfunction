advancement revoke @s only mastermodel:on_the_hell
damage @s 10

scoreboard objectives add on_the_hell dummy
scoreboard players add #say on_the_hell 1
execute if score #say on_the_hell matches 1 run tellraw @s [{"text":"[MasterModel] ","color":"dark_red"},{"text":"你的头脑变得麻木……","color":"dark_purple",italic:true}]
execute if score #say on_the_hell matches 3 run effect give @s nausea 14 0 true
execute if score #say on_the_hell matches 6 run tellraw @s [{"text":"[MasterModel] ","color":"dark_red"},{"text":"你痛苦不堪……","color":"dark_purple",italic:true}]
execute if score #say on_the_hell matches 8 run playsound ambient.cave master @s ~ ~ ~ 1 1
execute if score #say on_the_hell matches 11 run tellraw @s [{"text":"[MasterModel] ","color":"dark_red"},{"text":"阴森的声音在你耳边萦绕不绝……","color":"dark_purple",italic:true}]
execute if score #say on_the_hell matches 16 run playsound ambient.cave master @s ~ ~ ~ 0.6 1

execute if score #say on_the_hell matches 16 run scoreboard players set #say on_the_hell 0