#给凋零设置活动范围/爆炸后血量/飞行速度等
data merge entity @e[type=wither,tag=!wither_set,limit=1] {home_pos:[I;0,0,0],home_radius:30}
data merge entity @e[type=wither,tag=!wither_set,limit=1] {Health:450}
data merge entity @e[type=wither,tag=!wither_set,limit=1] {attributes:[{id:"flying_speed",base:0.3}]}
execute as @e[type=wither,tag=!wither_set,limit=1] store result entity @s home_pos[0] int 1 run data get entity @s Pos[0]
execute as @e[type=wither,tag=!wither_set,limit=1] store result entity @s home_pos[1] int 1 run data get entity @s Pos[1]
execute as @e[type=wither,tag=!wither_set,limit=1] store result entity @s home_pos[2] int 1 run data get entity @s Pos[2]


execute as @e[type=wither,tag=!wither_set] at @s run tag @s add wither_set
