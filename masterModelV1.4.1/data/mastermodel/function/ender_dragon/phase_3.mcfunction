scoreboard players remove #p3_timer charge_timer 1
execute unless data entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:9} run data merge entity @e[type=minecraft:ender_dragon,limit=1] {DragonPhase:0}

# 提示音
execute if score #p3_timer charge_timer matches 13 as @e[type=minecraft:ender_dragon,limit=1] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 8 0.7
execute if score #p3_timer charge_timer matches 5 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge
execute if score #p3_timer charge_timer matches 1 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge
execute if score #p3_timer charge_timer matches ..0 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge2

# 重置随机计时器（2~6秒）
execute if score #p3_timer charge_timer matches ..0 run scoreboard players set #p3_timer charge_timer 120
execute if score #p3_timer charge_timer matches 120 store result score #rand2 charge_timer run random value 0..80
execute if score #p3_timer charge_timer matches 120 run scoreboard players operation #p3_timer charge_timer -= #rand2 charge_timer
