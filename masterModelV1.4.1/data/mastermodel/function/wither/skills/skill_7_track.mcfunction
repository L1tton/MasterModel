# 每tick朝最近玩家设置中等速度
summon marker ~ ~ ~ {Tags:["skill7_tmp"]}
execute as @e[type=marker,tag=skill7_tmp,limit=1] at @s facing entity @p[distance=..50,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.45
data modify entity @s Motion set from entity @e[type=marker,tag=skill7_tmp,limit=1] Pos
kill @e[type=marker,tag=skill7_tmp]