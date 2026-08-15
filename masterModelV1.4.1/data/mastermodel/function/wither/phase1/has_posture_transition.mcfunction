tag @s remove no_posture
tag @s remove skill_0
scoreboard players set @s Wither_Timer_Skill 0
#打开ai
data merge entity @s {NoAI:0b}
#加抗性提升II
effect give @s resistance infinite 1 true
