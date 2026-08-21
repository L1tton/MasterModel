tag @s remove skill_0a
tag @s remove skill_1
tag @s remove skill_3
tag @s remove skill_4
tag @s remove skill_5

tag @s add skill_0b
scoreboard players set @s[tag=skill_0b] Wither_Timer_Skill 10000

#释放忍术
function mastermodel:wither/skills/all_skills