tag @s add no_posture
#释放技能skill0_骷髅雨
tag @s add skill_0
scoreboard players set @s Wither_Timer_Skill 1000
#清除可能存在的skill1_marker
execute as @e[type=marker,tag=wither_skill1_marker] run kill @s
#清除抗性提升效果
effect clear @s resistance

#关闭ai
data merge entity @s {NoAI:1b}