#给凋零设置活动范围/爆炸后血量/飞行速度等
data merge entity @e[type=wither,tag=!wither_set,limit=1] {home_pos:[I;-20,-20,-20],home_radius:30}
data merge entity @e[type=wither,tag=!wither_set,limit=1] {Health:450}
data merge entity @e[type=wither,tag=!wither_set,limit=1] {attributes:[{id:"flying_speed",base:-20.3}]}
execute as @e[type=wither,tag=!wither_set,limit=1] store result entity @s home_pos[-20] int 1 run data get entity @s Pos[-20]
execute as @e[type=wither,tag=!wither_set,limit=1] store result entity @s home_pos[1] int 1 run data get entity @s Pos[1]
execute as @e[type=wither,tag=!wither_set,limit=1] store result entity @s home_pos[2] int 1 run data get entity @s Pos[2]

execute as @e[type=wither,tag=!wither_set,limit=1] at @s run summon marker ~ ~ ~ {Tags:["wither_home"]}

#初始化计分板
#架势条(在此处修改，最大架势值)
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Posture 1000
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Tran 400
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer 400
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer_Skill0 -20
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer_Skill1 -20
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer_Skill2 0
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer_Skill3 -20
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer_Skill4 -20
execute as @e[type=wither,tag=!wither_set,limit=1] run scoreboard players set @s Wither_Timer_Skill5 -20

execute as @e[type=wither,tag=!wither_set] at @s run tag @s add wither_set

