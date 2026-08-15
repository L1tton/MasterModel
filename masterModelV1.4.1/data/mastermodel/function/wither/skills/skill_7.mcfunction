##追踪骷髅头 生成一颗会追踪玩家的骷髅头射弹
##skill7_追踪凋零之首
# 从凋零上方70度斜向上随机方向发射 → 短延迟后追踪 → 接近玩家后加速并锁定方向

# 召唤蓝色凋零之首
execute at @s run summon wither_skull ~ ~2.8 ~ {Tags:["skill7_skull","skill7_launch"],Glowing:1b,Motion:[0.0d,0.0d,0.0d]}
# 设置Owner，防止自己打自己
data modify entity @e[type=wither_skull,tag=skill7_skull,limit=1,sort=nearest] Owner set from entity @s UUID
# 初始化生命计时（复用已有计分板）
scoreboard players set @e[type=wither_skull,tag=skill7_skull,limit=1,sort=nearest] Wither_Timer_Skill7 0
# ===== 生成约70度斜向上的随机初始速度 =====
execute at @s run summon marker ~ ~2.8 ~ {Tags:["skill7_dir"]}
# 随机yaw + 固定pitch -70°
execute as @e[type=marker,tag=skill7_dir,limit=1] store result entity @s Rotation[0] float 1 run random value 0..359
data modify entity @e[type=marker,tag=skill7_dir,limit=1] Rotation[1] set value -70.0f
# 生成方向向量（初始速度约0.9）
execute as @e[type=marker,tag=skill7_dir,limit=1] at @s positioned 0.0 0.0 0.0 run tp @s ^ ^ ^0.3
# 写入初始Motion
data modify entity @e[type=wither_skull,tag=skill7_skull,limit=1,sort=nearest] Motion set from entity @e[type=marker,tag=skill7_dir,limit=1] Pos
# 清理
kill @e[type=marker,tag=skill7_dir]
tag @e[type=wither_skull,tag=skill7_skull] remove skill7_skull