# 最后一次瞄准后大幅加速，并停止追踪（锁定直线）
summon marker ~ ~ ~ {Tags:["skill7_tmp"]}
execute as @e[type=marker,tag=skill7_tmp,limit=1] at @s facing entity @p[distance=..12,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] feet positioned 0.0 0.0 0.0 run tp @s ^ ^ ^1.4
data modify entity @s Motion set from entity @e[type=marker,tag=skill7_tmp,limit=1] Pos
kill @e[type=marker,tag=skill7_tmp]

tag @s remove skill7_track
tag @s add skill7_dash

# 加速瞬间：监守者音波粒子（只播放一次）
particle minecraft:sonic_boom ~ ~ ~ 0 0 0 0 1 force
playsound minecraft:entity.warden.sonic_boom hostile @a[distance=..32] ~ ~ ~ 1.2 1.1
# 提示音，方便玩家感知冲刺开始
playsound minecraft:entity.wither.shoot hostile @a[distance=..32] ~ ~ ~ 1.8 0.65