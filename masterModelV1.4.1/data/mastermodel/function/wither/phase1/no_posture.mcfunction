execute as @s at @s if block ~-0.5 ~-0.1 ~0.5 #minecraft:air run tp @s ~ ~-0.1 ~

scoreboard players add @s Wither_Timer_Skill0 1
execute if score @s Wither_Timer_Skill0 matches 1 as @s at @s run function mastermodel:wither/skills/skill_0
execute if score @s Wither_Timer_Skill0 matches 15 as @s run scoreboard players set @s Wither_Timer_Skill0 0

