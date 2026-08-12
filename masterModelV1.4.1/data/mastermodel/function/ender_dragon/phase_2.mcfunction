# 计时器递减
scoreboard players remove #p2_timer charge_timer 1

# 提示音
execute if score #p2_timer charge_timer matches 63 as @e[type=minecraft:ender_dragon,limit=1] at @s run playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..128] ~ ~ ~ 8 0.7
execute if score #p2_timer charge_timer matches 51 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge
execute if score #p2_timer charge_timer matches 50 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge
execute if score #p2_timer charge_timer matches 1 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge
execute if score #p2_timer charge_timer matches ..0 as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge

# 重置随机计时器（30~60秒）
execute if score #p2_timer charge_timer matches ..0 run scoreboard players set #p2_timer charge_timer 1200
execute if score #p2_timer charge_timer matches 1200 store result score #rand charge_timer run random value 0..600
execute if score #p2_timer charge_timer matches 1200 run scoreboard players operation #p2_timer charge_timer -= #rand charge_timer

#execute as @e[type=minecraft:ender_dragon,limit=1] at @s run function mastermodel:ender_dragon/do_charge
#execute as @e[type=minecraft:ender_dragon,limit=1] at @s run execute facing entity @p[distance=..150] eyes run tp @s ~ ~ ~ ~180 ~