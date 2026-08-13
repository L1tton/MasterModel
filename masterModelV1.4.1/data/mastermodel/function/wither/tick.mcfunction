execute as @e[type=wither,tag=!strong,sort=random] at @s run function mob_modify:spawning/wither

#检测凋零血量
execute as @e[type=wither,tag=wither_set] store result score @s Wither_Health run data get entity @s Health
#判断阶段
execute as @e[type=wither,tag=wither_set] if score @s Wither_Health matches 226..450 run execute as @e[type=wither,tag=!phase_1] at @s run tag @s add phase_1
execute as @e[type=wither,tag=wither_set] if score @s Wither_Health matches ..225 run execute as @e[type=wither,tag=!phase_2] at @s run function mastermodel:wither/phase2/phase_2_transition

## ========== 一阶段行为 ==========
#有架势时
execute as @e[type=wither,tag=phase_1,tag=!no_posture] as @s run scoreboard players remove @s Wither_Posture 10
execute as @e[type=wither,tag=phase_1,tag=!no_posture] run function mastermodel:wither/phase1/has_posture
execute as @e[type=wither,tag=phase_1,tag=!no_posture] if score @s Wither_Posture matches ..0 run function mastermodel:wither/phase1/no_posture_transition
#无架势时
execute as @e[type=wither,tag=phase_1,tag=no_posture] run scoreboard players add @s Wither_Posture 2
execute as @e[type=wither,tag=phase_1,tag=no_posture] run function mastermodel:wither/phase1/no_posture
execute as @e[type=wither,tag=phase_1,tag=no_posture] if score @s Wither_Posture >= #max_posture Wither_Posture run function mastermodel:wither/phase1/has_posture_transition

## ========== 二阶段行为 ==========


## Boss Posture Bar 行为
# 一阶段：显示并更新进度
execute if entity @e[type=wither,tag=!phase_2] run bossbar set mastermodel:wither_posture visible true
execute as @e[type=wither,tag=!phase_2] at @s run bossbar set mastermodel:wither_posture players @a[distance=..76]
execute as @e[type=wither,tag=!phase_2,limit=1] store result bossbar mastermodel:wither_posture value run scoreboard players get @s Wither_Posture

# 二阶段 或 没有凋零：隐藏
execute unless entity @e[type=wither,tag=!phase_2] run bossbar set mastermodel:wither_posture visible false
execute unless entity @e[type=wither] run bossbar set mastermodel:wither_posture visible false



