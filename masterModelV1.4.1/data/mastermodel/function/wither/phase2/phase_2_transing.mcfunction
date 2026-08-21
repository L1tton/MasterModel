#注意技能skill0_5均有一秒前摇，配置时间时请加20tick
execute if score @s Wither_Tran matches 390 run tag @s add skill_6
execute if score @s Wither_Tran matches 390 run scoreboard players set @s[tag=skill_6] Wither_Timer_Skill 2

execute if score @s Wither_Tran matches 350 run tag @s add skill_3
execute if score @s Wither_Tran matches 350 run scoreboard players set @s[tag=skill_3] Wither_Timer_Skill 32

execute if score @s Wither_Tran matches 50 run tag @s add skill_7
execute if score @s Wither_Tran matches 50 run scoreboard players set @s[tag=skill_7] Wither_Timer_Skill 12

# ===== Loser风格 4鼓 + 1失真电吉他（32格内清晰可听）=====
# 鼓1
execute if score @s Wither_Tran matches 32 at @s run playsound minecraft:block.note_block.basedrum master @a[distance=..40] ~ ~ ~ 2.0 0.5
execute if score @s Wither_Tran matches 32 at @s run playsound minecraft:block.note_block.bass master @a[distance=..40] ~ ~ ~ 2.0 0.5
# 鼓2
execute if score @s Wither_Tran matches 22 at @s run playsound minecraft:block.note_block.basedrum master @a[distance=..40] ~ ~ ~ 2.0 0.5
execute if score @s Wither_Tran matches 22 at @s run playsound minecraft:block.note_block.bass master @a[distance=..40] ~ ~ ~ 2.0 0.5

# 鼓3
execute if score @s Wither_Tran matches 12 at @s run playsound minecraft:block.note_block.basedrum master @a[distance=..40] ~ ~ ~ 2.0 0.5
execute if score @s Wither_Tran matches 12 at @s run playsound minecraft:block.note_block.bass master @a[distance=..40] ~ ~ ~ 2.0 0.5
execute if score @s Wither_Tran matches 12 at @s run playsound minecraft:block.note_block.snare master @a[distance=..40] ~ ~ ~ 2.0 1.5

# 鼓4
execute if score @s Wither_Tran matches 6 at @s run playsound minecraft:block.note_block.basedrum master @a[distance=..40] ~ ~ ~ 2.5 0.5
execute if score @s Wither_Tran matches 6 at @s run playsound minecraft:block.note_block.bass master @a[distance=..40] ~ ~ ~ 2.0 0.5
execute if score @s Wither_Tran matches 6 at @s run playsound minecraft:block.note_block.snare master @a[distance=..40] ~ ~ ~ 2.0 1.5

# 电吉他（失真感）
execute if score @s Wither_Tran matches 1 at @s run playsound minecraft:block.note_block.guitar master @a[distance=..40] ~ ~ ~ 2.5 0.7
execute if score @s Wither_Tran matches 1 at @s run playsound minecraft:entity.wither.shoot master @a[distance=..40] ~ ~ ~ 2.0 0.35
execute if score @s Wither_Tran matches 1 at @s run playsound minecraft:item.trident.thunder master @a[distance=..40] ~ ~ ~ 1.2 0.7

#释放忍术
function mastermodel:wither/skills/all_skills


