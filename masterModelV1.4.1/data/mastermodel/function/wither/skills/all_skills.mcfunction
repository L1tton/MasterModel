##skill_0 骷髅雨 频率配置
scoreboard players add @s[tag=skill_0] Wither_Timer_Skill0 1
execute if score @s[tag=skill_0] Wither_Timer_Skill0 matches 1 as @s at @s run function mastermodel:wither/skills/skill_0
execute if score @s[tag=skill_0] Wither_Timer_Skill0 matches 15 as @s run scoreboard players set @s Wither_Timer_Skill0 0

##skill_0a 骷髅雨(二阶段变种) 频率配置
scoreboard players add @s[tag=skill_0a] Wither_Timer_Skill0 1
execute if score @s[tag=skill_0a] Wither_Timer_Skill0 matches 1 as @s at @s run function mastermodel:wither/skills/skill_0a
execute if score @s[tag=skill_0a] Wither_Timer_Skill0 matches 7 as @s run scoreboard players set @s Wither_Timer_Skill0 0
scoreboard players add @s[tag=skill_0a] Wither_Timer_Skill2 1
execute if score @s[tag=skill_0a] Wither_Timer_Skill2 matches 1 as @s at @s run function mastermodel:wither/skills/skill_2
execute if score @s[tag=skill_0a] Wither_Timer_Skill2 matches 50 as @s run scoreboard players set @s Wither_Timer_Skill2 0

##skill_1 追踪闪电 频率配置
# 技能触发时，在附近玩家位置播放较轻的雷声
scoreboard players add @s[tag=skill_1] Wither_Timer_Skill1 1
execute if score @s[tag=skill_1] Wither_Timer_Skill1 matches -19 as @s at @s run execute as @a[distance=..50] at @s run playsound minecraft:entity.lightning_bolt.thunder master @s ~ ~ ~ 0.15 0.9
execute if score @s[tag=skill_1] Wither_Timer_Skill1 matches 1 as @s at @s run function mastermodel:wither/skills/skill_1
execute if score @s[tag=skill_1] Wither_Timer_Skill1 matches 10 as @s run scoreboard players set @s Wither_Timer_Skill1 0
# 20 tick 后执行闪电生成 延迟配置
execute as @e[type=marker,tag=wither_skill1_marker] run scoreboard players add @s Wither_Timer_Skill1 1
execute as @e[type=marker,tag=wither_skill1_marker,scores={Wither_Timer_Skill1=20..}] at @s run summon lightning_bolt ~ ~ ~
kill @e[type=marker,tag=wither_skill1_marker,scores={Wither_Timer_Skill1=20..}]

##skill_2 雷暴 频率配置
scoreboard players add @s[tag=skill_2] Wither_Timer_Skill2 1
execute if score @s[tag=skill_2] Wither_Timer_Skill2 matches 1 as @s at @s run function mastermodel:wither/skills/skill_2
execute if score @s[tag=skill_2] Wither_Timer_Skill2 matches 20 as @s run scoreboard players set @s Wither_Timer_Skill2 0
# 20tick 后落雷并清理 延迟配置
execute as @e[type=marker,tag=wither_skill2_marker,scores={Wither_Timer_Skill2=20..}] at @s run summon lightning_bolt ~ ~ ~
kill @e[type=marker,tag=wither_skill2_marker,scores={Wither_Timer_Skill2=20..}]

##skill_3 召唤凋零
scoreboard players add @s[tag=skill_3] Wither_Timer_Skill3 1
execute if score @s[tag=skill_3] Wither_Timer_Skill3 matches 1 as @s at @s run function mastermodel:wither/skills/skill_3
execute if score @s[tag=skill_3] Wither_Timer_Skill3 matches 2 as @s run scoreboard players set @s Wither_Timer_Skill3 0

##skill_4 灾厄法术
scoreboard players add @s[tag=skill_4] Wither_Timer_Skill4 1
execute if score @s[tag=skill_4] Wither_Timer_Skill4 matches 1 as @s at @s run function mastermodel:wither/skills/skill_4
execute if score @s[tag=skill_4] Wither_Timer_Skill4 matches 30 as @s run scoreboard players set @s Wither_Timer_Skill4 0

##skill_5 灾厄雨
scoreboard players add @s[tag=skill_5] Wither_Timer_Skill5 1
execute if score @s[tag=skill_5] Wither_Timer_Skill5 matches 1 as @s at @s run function mastermodel:wither/skills/skill_5
execute if score @s[tag=skill_5] Wither_Timer_Skill5 matches 6 as @s run scoreboard players set @s Wither_Timer_Skill5 0

##skill_6 风暴
scoreboard players add @s[tag=skill_6] Wither_Timer_Skill6 1
execute if score @s[tag=skill_6] Wither_Timer_Skill6 matches 1 as @s at @s run function mastermodel:wither/skills/skill_6
execute if score @s[tag=skill_6] Wither_Timer_Skill6 matches 2 as @s run scoreboard players set @s Wither_Timer_Skill6 0

##skill_7 追踪骷髅头
scoreboard players add @s[tag=skill_7] Wither_Timer_Skill7 1
execute if score @s[tag=skill_7] Wither_Timer_Skill7 matches 1 as @s at @s run function mastermodel:wither/skills/skill_7
execute if score @s[tag=skill_7] Wither_Timer_Skill7 matches 2 as @s run scoreboard players set @s Wither_Timer_Skill7 0

##skill_0b 骷髅雨(最终阶段变种) 频率配置
scoreboard players add @s[tag=skill_0b] Wither_Timer_Skill0 1
execute if score @s[tag=skill_0b] Wither_Timer_Skill0 matches 1 as @s at @s run function mastermodel:wither/skills/skill_0a
execute if score @s[tag=skill_0b] Wither_Timer_Skill0 matches 12 as @s run scoreboard players set @s Wither_Timer_Skill0 0
scoreboard players add @s[tag=skill_0b] Wither_Timer_Skill2 1
execute if score @s[tag=skill_0b] Wither_Timer_Skill2 matches 1 as @s at @s run function mastermodel:wither/skills/skill_2
execute if score @s[tag=skill_0b] Wither_Timer_Skill2 matches 80 as @s run scoreboard players set @s Wither_Timer_Skill2 0
scoreboard players add @s[tag=skill_0b] Wither_Timer_Skill3 1
execute if score @s[tag=skill_0b] Wither_Timer_Skill3 matches 199 as @s at @s run function mastermodel:wither/skills/skill_3
execute if score @s[tag=skill_0b] Wither_Timer_Skill3 matches 200 as @s run scoreboard players set @s Wither_Timer_Skill3 0
scoreboard players add @s[tag=skill_0b] Wither_Timer_Skill5 1
execute if score @s[tag=skill_0b] Wither_Timer_Skill5 matches 1 as @s at @s run function mastermodel:wither/skills/skill_5
execute if score @s[tag=skill_0b] Wither_Timer_Skill5 matches 40 as @s run scoreboard players set @s Wither_Timer_Skill5 0
scoreboard players add @s[tag=skill_0b] Wither_Timer_Skill7 1
execute if score @s[tag=skill_0b] Wither_Timer_Skill7 matches 49 as @s at @s run function mastermodel:wither/skills/skill_7
execute if score @s[tag=skill_0b] Wither_Timer_Skill7 matches 50 as @s run scoreboard players set @s Wither_Timer_Skill7 0

##结束技能/减技能cd
scoreboard players remove @s Wither_Timer_Skill 1
execute if score @s[tag=skill_0] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 0
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_0
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill0 -20
execute if score @s[tag=skill_0a] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 50
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_0a
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill0 -20
execute if score @s[tag=skill_1] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 250
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_1
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill1 -20
execute if score @s Wither_Timer_Skill matches ..0 run execute as @e[type=marker,tag=wither_skill1_marker] run kill @s
execute if score @s[tag=skill_2] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 250
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_2
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill2 0
execute if score @s Wither_Timer_Skill matches ..0 run kill @e[type=marker,tag=wither_skill2_marker]
execute if score @s[tag=skill_3] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 100
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_3
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill3 -20
execute if score @s[tag=skill_4] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 0
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_4
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill4 -20
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_5
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill5 -20
execute if score @s[tag=skill_6] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 0
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_6
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill6 0
execute if score @s[tag=skill_7] Wither_Timer_Skill matches ..0 run scoreboard players remove @s Wither_Timer 0
execute if score @s Wither_Timer_Skill matches ..0 run tag @s remove skill_7
execute if score @s Wither_Timer_Skill matches ..0 run scoreboard players set @s Wither_Timer_Skill7 0


# ========== 技能期间粒子提示（便于玩家分辨） ==========

# skill_0 / skill_0a 骷髅雨：灵魂 + 白灰
execute as @s[tag=skill_0] at @s run particle minecraft:soul ~ ~2.5 ~ 0.6 0.8 0.6 0.02 8 force
execute as @s[tag=skill_0] at @s run particle minecraft:white_ash ~ ~2.2 ~ 0.7 0.6 0.7 0.01 12 force
execute as @s[tag=skill_0a] at @s run particle minecraft:soul ~ ~2.5 ~ 0.8 1.0 0.8 0.03 12 force
execute as @s[tag=skill_0a] at @s run particle minecraft:white_ash ~ ~2.2 ~ 0.9 0.8 0.9 0.02 18 force

# skill_1 追踪闪电：电光火花
execute as @s[tag=skill_1] at @s run particle minecraft:electric_spark ~ ~2.8 ~ 0.8 1.0 0.8 0.1 15 force
execute as @s[tag=skill_1] at @s run particle minecraft:end_rod ~ ~2.5 ~ 0.4 0.6 0.4 0.02 4 force

# skill_2 雷暴：密集电光 + 烟雾
execute as @s[tag=skill_2] at @s run particle minecraft:electric_spark ~ ~3 ~ 1.2 1.2 1.2 0.15 25 force
execute as @s[tag=skill_2] at @s run particle minecraft:smoke ~ ~2.8 ~ 0.9 0.8 0.9 0.03 10 force
execute as @s[tag=skill_2] at @s run particle minecraft:cloud ~ ~3.2 ~ 0.7 0.4 0.7 0.01 6 force
# 预警粒子
execute as @e[type=marker,tag=wither_skill2_marker] run scoreboard players add @s Wither_Timer_Skill2 1
execute as @e[type=marker,tag=wither_skill2_marker] at @s run particle minecraft:electric_spark ~ ~0.5 ~ 0.35 0.8 0.35 0.05 8 force
execute as @e[type=marker,tag=wither_skill2_marker] at @s run particle minecraft:end_rod ~ ~0.3 ~ 0.15 0.6 0.15 0.01 2 force

# skill_3 召唤凋零骷髅：黑暗灵魂
execute as @s[tag=skill_3] at @s run particle minecraft:sculk_soul ~ ~2.5 ~ 0.7 0.9 0.7 0.03 10 force
execute as @s[tag=skill_3] at @s run particle minecraft:smoke ~ ~2.2 ~ 0.6 0.7 0.6 0.02 8 force
execute as @s[tag=skill_3] at @s run particle minecraft:soul ~ ~2.8 ~ 0.4 0.5 0.4 0.01 5 force

# skill_4 / skill_5 灾厄法术：紫色不祥魔法
execute as @s[tag=skill_4] at @s run particle minecraft:witch ~ ~2.6 ~ 0.7 0.9 0.7 0.01 12 force
execute as @s[tag=skill_4] at @s run particle minecraft:enchant ~ ~2.8 ~ 0.8 0.8 0.8 0.5 15 force
execute as @s[tag=skill_4] at @s run particle minecraft:raid_omen ~ ~2.4 ~ 0.5 0.6 0.5 0.01 4 force

execute as @s[tag=skill_5] at @s run particle minecraft:witch ~ ~2.6 ~ 0.9 1.1 0.9 0.02 16 force
execute as @s[tag=skill_5] at @s run particle minecraft:enchant ~ ~3 ~ 1.0 1.0 1.0 0.6 20 force
execute as @s[tag=skill_5] at @s run particle minecraft:trial_omen ~ ~2.5 ~ 0.6 0.7 0.6 0.01 6 force