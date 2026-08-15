#抽取技能/赋予标签/设定持续时间
execute if score @s Wither_Timer matches 1.. run scoreboard players remove @s Wither_Timer 1
execute if score @s Wither_Timer matches ..0 store result score @s Wither_Skill run random value 0..2
#execute if score @s Wither_Timer matches ..0 store result score @s Wither_Skill run say rand skill

#注意技能skill0_5均有一秒前摇，配置时间时请加20tick
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 0 run tag @s add skill_0
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 0 run scoreboard players set @s[tag=skill_0] Wither_Timer_Skill 120
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 1 run tag @s add skill_1
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 1 run scoreboard players set @s[tag=skill_1] Wither_Timer_Skill 50
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 2 run tag @s add skill_2
execute if score @s Wither_Timer matches 0 if score @s Wither_Skill matches 2 run scoreboard players set @s[tag=skill_2] Wither_Timer_Skill 81

#重置技能释放cd（1200=60s）
execute if score @s Wither_Timer matches ..0 run scoreboard players set @s Wither_Timer 600
execute if score @s Wither_Timer matches 600 store result score #rand Wither_Timer run random value 0..100
execute if score @s Wither_Timer matches 600 run scoreboard players operation @s Wither_Timer -= #rand Wither_Timer

#释放忍术
function mastermodel:wither/skills/all_skills

