schedule function weather:weathers/slime_rain 10s replace

execute store result score day Lunarphase run time query day
scoreboard players operation day Lunarphase %= 8 Const
execute store result score daytime Daytime run time query daytime

## 检测满月后的第一个正午
#检测成功
execute if score nextslime slimetime matches ..0 run scoreboard players set islime slimetime 1
execute if score day Lunarphase matches 1 if score daytime Daytime matches 5800..6200 if score islime slimetime matches 1 run \
scoreboard players set islime slimetime 2
execute if score islime slimetime matches 2 run scoreboard players set thislime slimetime 6000
execute if score islime slimetime matches 2 run say 史莱姆雨正在落下..

execute if score islime slimetime matches 2 run execute store result score nextslime slimetime run random value 192000..384000
execute if score islime slimetime matches 2 run scoreboard players set islime slimetime 0

#检测失败
execute if score nextslime slimetime matches ..-12000 run scoreboard players set islime slimetime 0
execute if score nextslime slimetime matches ..-12000 run execute store result score nextslime slimetime run random value 24000..72000

#停止代码 scoreboard players set thislime slimetime 0