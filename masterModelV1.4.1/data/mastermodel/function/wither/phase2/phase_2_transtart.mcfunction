tag @s add phase_transing

tag @s remove phase_1
tag @s remove no_posture
#停止技能
scoreboard players set @s Wither_Timer_Skill 0
#改变位置
execute as @s store result entity @s Pos[0] int 1 run data get entity @e[type=marker,tag=wither_home,sort=nearest,limit=1] Pos[0]
execute as @s store result entity @s Pos[1] int 1 run data get entity @e[type=marker,tag=wither_home,sort=nearest,limit=1] Pos[1]
execute as @s store result entity @s Pos[2] int 1 run data get entity @e[type=marker,tag=wither_home,sort=nearest,limit=1] Pos[2]

effect clear @s resistance
#关闭ai 无敌
data merge entity @s {NoAI:1b,Invulnerable:1b}

# 转换开始音效（阴森蓄力）
playsound minecraft:entity.wither.spawn master @a[distance=..48] ~ ~ ~ 2.0 0.5
playsound minecraft:entity.warden.heartbeat master @a[distance=..48] ~ ~ ~ 2.0 0.6
playsound minecraft:block.end_portal.spawn master @a[distance=..48] ~ ~ ~ 2.0 0.45
playsound minecraft:block.sculk_shrieker.shriek master @a[distance=..48] ~ ~ ~ 2.0 0.55
playsound minecraft:ambient.cave master @a[distance=..48] ~ ~ ~ 2.0 0.2