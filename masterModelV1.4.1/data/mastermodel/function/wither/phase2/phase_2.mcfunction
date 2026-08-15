#抽取技能/赋予标签/设定持续时间
execute if score @s Wither_Timer matches 1.. run scoreboard players remove @s Wither_Timer 1
execute if score @s Wither_Timer matches ..0 store result score @s Wither_Skill run random value 0..3
#execute if score @s Wither_Timer matches ..0 store result score @s Wither_Skill run say rand skill

#注意技能skill0_5均有一秒前摇，配置时间时请加20tick
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 0 run tag @s add skill_0a
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 0 run scoreboard players set @s[tag=skill_0a] Wither_Timer_Skill 220
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 1 run tag @s add skill_1
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 1 run scoreboard players set @s[tag=skill_1] Wither_Timer_Skill 70
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 2 run tag @s add skill_3
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 2 run scoreboard players set @s[tag=skill_3] Wither_Timer_Skill 24
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 3 run tag @s add skill_4
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 3 run tag @s add skill_5
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 3 run scoreboard players set @s[tag=skill_4] Wither_Timer_Skill 100

#重置技能释放cd（1200=60s）
execute if score @s Wither_Timer matches ..0 run scoreboard players set @s Wither_Timer 600
execute if score @s Wither_Timer matches 600 store result score #rand Wither_Timer run random value 0..200
execute if score @s Wither_Timer matches 600 run scoreboard players operation @s Wither_Timer -= #rand Wither_Timer

#释放忍术
function mastermodel:wither/skills/all_skills

