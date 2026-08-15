## =====Boss Posture Bar 行为=====
# 一阶段：显示并更新进度
execute if entity @e[type=wither,tag=phase_1] run bossbar set mastermodel:wither_posture visible true
execute as @e[type=wither,tag=phase_1] at @s run bossbar set mastermodel:wither_posture players @a[distance=..50]
execute as @e[type=wither,tag=phase_1,limit=1] store result bossbar mastermodel:wither_posture value run scoreboard players get @s Wither_Posture
# 二阶段 或 没有凋零：隐藏
execute unless entity @e[type=wither,tag=phase_1] run bossbar set mastermodel:wither_posture visible false
execute unless entity @e[type=wither] run bossbar set mastermodel:wither_posture visible false

## =====Boss Tran Bar 行为=====
# 转换阶段：显示并更新进度
execute if entity @e[type=wither,tag=phase_transing] run bossbar set mastermodel:wither_tran visible true
execute as @e[type=wither,tag=phase_transing] at @s run bossbar set mastermodel:wither_tran players @a[distance=..50]
execute as @e[type=wither,tag=phase_transing,limit=1] store result bossbar mastermodel:wither_tran value run scoreboard players get @s Wither_Tran
# 其他 或 没有凋零：隐藏
execute unless entity @e[type=wither,tag=phase_transing] run bossbar set mastermodel:wither_tran visible false
execute unless entity @e[type=wither] run bossbar set mastermodel:wither_tran visible false

# 没有凋零时清除剩余的maker
execute unless entity @e[type=wither] run kill @e[type=marker,tag=wither_skill1_marker]
execute unless entity @e[type=wither] run kill @e[type=marker,tag=wither_home]
# 没有凋零时立刻清除 skill3 骷髅
execute unless entity @e[type=wither] run kill @e[type=wither_skeleton,tag=wither_skill3]
# 凋零死亡时清理
execute unless entity @e[type=wither] run kill @e[type=wither_skull,tag=skill7_launch]
execute unless entity @e[type=wither] run kill @e[type=wither_skull,tag=skill7_track]
execute unless entity @e[type=wither] run kill @e[type=wither_skull,tag=skill7_dash]
##================================节约性能（未检验合理性）================================
#execute unless entity @e[type=wither] run return 0
##========================================================================================
execute as @e[type=wither,tag=!strong,sort=random] at @s run function mob_modify:spawning/wither
#检测凋零血量
execute as @e[type=wither,tag=wither_set] store result score @s Wither_Health run data get entity @s Health
#保持血量 防止退阶段
execute as @e[type=wither,tag=phase_2] if score @s Wither_Health matches 225.. as @s run data merge entity @s {Health:225} 
#判断阶段
execute as @e[type=wither,tag=wither_set,tag=!phase_2] if score @s Wither_Health matches 226..450 run execute as @e[type=wither,tag=!phase_1] at @s run function mastermodel:wither/phase1/phase_1_transition
execute as @e[type=wither,tag=wither_set,tag=!phase_transing] if score @s Wither_Health matches ..225 run execute as @e[type=wither,tag=!phase_2] at @s run function mastermodel:wither/phase2/phase_2_transtart
execute as @e[type=wither,tag=wither_set] if score @s Wither_Health matches ..30 run execute as @e[type=wither,tag=!phase_end] at @s run tag @s add phase_end

## ========== 一阶段行为 ==========
#有架势时
execute as @e[type=wither,tag=phase_1,tag=!no_posture] as @s run scoreboard players remove @s Wither_Posture 1
execute as @e[type=wither,tag=phase_1,tag=!no_posture] run function mastermodel:wither/phase1/has_posture
execute as @e[type=wither,tag=phase_1,tag=!no_posture] if score @s Wither_Posture matches ..0 run function mastermodel:wither/phase1/no_posture_transition
#无架势时
execute as @e[type=wither,tag=phase_1,tag=no_posture] run scoreboard players add @s Wither_Posture 4
execute as @e[type=wither,tag=phase_1,tag=no_posture] run function mastermodel:wither/phase1/no_posture
execute as @e[type=wither,tag=phase_1,tag=no_posture] if score @s Wither_Posture >= #max_posture Wither_Posture run function mastermodel:wither/phase1/has_posture_transition

## ========== 阶段转换行为 ==========
execute as @e[type=wither,tag=phase_transing] run scoreboard players remove @s Wither_Tran 1
execute as @e[type=wither,tag=phase_transing] run function mastermodel:wither/phase2/phase_2_transing
execute as @e[type=wither,tag=phase_transing] if score @s Wither_Tran matches ..0 run function mastermodel:wither/phase2/phase_2_transend

## ========== 二阶段行为 ==========
execute as @e[type=wither,tag=phase_2,tag=!phase_end] run function mastermodel:wither/phase2/phase_2
execute as @e[type=wither,tag=phase_end] run function mastermodel:wither/phase2/phase_end

## ========== skill7 追踪凋零之首 行为 ==========
# 计时
execute as @e[type=wither_skull,tag=skill7_launch] run scoreboard players add @s Wither_Timer_Skill7 1
execute as @e[type=wither_skull,tag=skill7_track] run scoreboard players add @s Wither_Timer_Skill7 1
execute as @e[type=wither_skull,tag=skill7_dash] run scoreboard players add @s Wither_Timer_Skill7 1
# 蓝色轨迹粒子（全程）
execute as @e[type=wither_skull,tag=skill7_launch] at @s run particle minecraft:dust{color:[0.25,0.65,1.0],scale:1.4} ~ ~ ~ 0.12 0.12 0.12 0 4 force
execute as @e[type=wither_skull,tag=skill7_track] at @s run particle minecraft:dust{color:[0.25,0.65,1.0],scale:1.4} ~ ~ ~ 0.12 0.12 0.12 0 4 force
execute as @e[type=wither_skull,tag=skill7_dash] at @s run particle minecraft:dust{color:[0.2,0.55,1.0],scale:1.6} ~ ~ ~ 0.15 0.15 0.15 0 6 force
execute as @e[type=wither_skull,tag=skill7_dash] at @s run particle minecraft:soul_fire_flame ~ ~ ~ 0.1 0.1 0.1 0.01 2 force
# 发射阶段 → 追踪阶段
execute as @e[type=wither_skull,tag=skill7_launch,scores={Wither_Timer_Skill7=10..}] run tag @s add skill7_track
execute as @e[type=wither_skull,tag=skill7_launch,scores={Wither_Timer_Skill7=10..}] run tag @s remove skill7_launch
# 追踪阶段
execute as @e[type=wither_skull,tag=skill7_track] at @s if entity @p[distance=..50,gamemode=!spectator,gamemode=!creative] run function mastermodel:wither/skills/skill_7_track
# 接近时进入冲刺
execute as @e[type=wither_skull,tag=skill7_track] at @s if entity @p[distance=..7,gamemode=!spectator,gamemode=!creative] run function mastermodel:wither/skills/skill_7_dash
# 超时清理
execute as @e[type=wither_skull,tag=skill7_launch] if score @s Wither_Timer_Skill7 matches 80.. run kill @s
execute as @e[type=wither_skull,tag=skill7_track] if score @s Wither_Timer_Skill7 matches 80.. run kill @s
execute as @e[type=wither_skull,tag=skill7_dash] if score @s Wither_Timer_Skill7 matches 80.. run kill @s

## ========== skill3 凋零骷髅 行为 ==========
# skill3 召唤的凋零骷髅：蓝色灵魂粒子
execute as @e[type=wither_skeleton,tag=wither_skill3] at @s run particle minecraft:soul ~ ~1.2 ~ 0.25 0.5 0.25 0.02 4 force
execute as @e[type=wither_skeleton,tag=wither_skill3] at @s run particle minecraft:sculk_soul ~ ~1.0 ~ 0.2 0.4 0.2 0.01 2 force

## 转移附近所有其他生物的仇恨
execute as @e[type=wither,tag=wither_set] at @s as @e[type=#mastermodel:wither_neutral_mobs,distance=..32] at @s run execute if entity @p[distance=..64,gamemode=!spectator,gamemode=!creative] run data modify entity @s angry_at set from entity @p[distance=..64,gamemode=!spectator,gamemode=!creative,limit=1,sort=nearest] UUID
execute as @e[type=wither,tag=wither_set] at @s as @e[type=#mastermodel:wither_neutral_mobs,distance=..32] at @s run execute if entity @p[distance=..64,gamemode=!spectator,gamemode=!creative] run data modify entity @s PlayerCreated set value false

