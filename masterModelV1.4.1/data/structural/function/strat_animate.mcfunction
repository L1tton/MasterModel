# 先把完整结构放到临时位置（只执行一次）
#say 已执行animate
execute as @e[type=wither,tag=!wither_set] at @s run place template structural:wither_platform ~ ~128 ~
execute as @e[type=wither,tag=!wither_set] at @s run playsound ambient.basalt_deltas.mood ambient @a ~ ~ ~ 2
execute as @e[type=wither,tag=!wither_set] at @s run playsound ambient.cave ambient @a ~ ~ ~ 2

# 初始化半径
scoreboard objectives add radius dummy
scoreboard players set #r radius 0

# 根据你的结构半径改这个值!
scoreboard players set #dr1 radius 23
scoreboard players set #dr2 radius 23
scoreboard players set #max radius 23

scoreboard players set #3 radius 3
scoreboard players set #4 radius 4
scoreboard players set #6 radius 6
scoreboard players set #17 radius 17
scoreboard players set #18 radius 18
scoreboard players set #19 radius 19
scoreboard players set #20 radius 20
scoreboard players set #21 radius 21

# 开始扩散
execute as @e[type=wither,tag=!wither_set] at @s run function structural:expand