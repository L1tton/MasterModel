schedule function weather:weathers/thunder 10s replace
schedule function weather:weathers/slime_rain 10s replace
schedule function weather:weathers/slime_spawn 10t replace

scoreboard objectives add thundertime dummy
scoreboard players set thisthunder thundertime 0
execute store result score nexthunder thundertime run random value 24000..480000

scoreboard objectives add slimetime dummy
scoreboard players set islime slimetime 0
scoreboard players set thislime slimetime 0
execute store result score nextslime slimetime run random value 24000..240000

#获取月相/日期
scoreboard objectives add Lunarphase dummy
scoreboard objectives add Daytime dummy
scoreboard objectives add Tick dummy


scoreboard objectives add Const dummy
scoreboard players set tmp Const 0
scoreboard players set 8 Const 8
scoreboard players set 9 Const 9
scoreboard players set 24000 Const 24000
scoreboard players set 6000 Const 6000
