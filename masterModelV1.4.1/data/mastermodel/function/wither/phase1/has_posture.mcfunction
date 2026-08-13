#抽取技能
execute if score @s Wither_Timer matches ..0 store result score @s Wither_Skill run random value 0..1
#释放忍术
execute if score @s Wither_Skill matches 0 run function mastermodel:wither/skills/skill_0
execute if score @s Wither_Skill matches 1 run function mastermodel:wither/skills/skill_1
#重置技能释放cd（1200=60s）
execute if score @s Wither_Timer matches ..0 run scoreboard players set @s Wither_Timer 600
execute if score @s Wither_Timer matches 600 store result score #rand Wither_Timer run random value 0..100
execute if score @s Wither_Timer matches 600 run scoreboard players operation @s Wither_Timer -= #rand Wither_Timer