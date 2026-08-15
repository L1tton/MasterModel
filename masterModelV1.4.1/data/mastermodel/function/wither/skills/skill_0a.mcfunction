##skill0a_骷髅雨(二阶段变体) 范围加大
#say summon skull

execute as @s run summon wither_skull ~ ~10 ~ {Tags:["skill_skull"]}
data modify entity @e[type=wither_skull,tag=skill_skull,limit=1,sort=nearest] Owner set from entity @s UUID

#随机偏移x
execute as @e[type=wither_skull,tag=skill_skull] store result score @s Temp run data get entity @s Pos[0] 100
execute as @e[type=wither_skull,tag=skill_skull] store result score #random Temp run random value -900..900
execute as @e[type=wither_skull,tag=skill_skull] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=wither_skull,tag=skill_skull] store result entity @s Pos[0] double 0.01 run scoreboard players get @s Temp
#z
execute as @e[type=wither_skull,tag=skill_skull] store result score @s Temp run data get entity @s Pos[2] 100
execute as @e[type=wither_skull,tag=skill_skull] store result score #random Temp run random value -900..900
execute as @e[type=wither_skull,tag=skill_skull] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=wither_skull,tag=skill_skull] store result entity @s Pos[2] double 0.01 run scoreboard players get @s Temp

# 生成时在骷髅头处播放风弹爆炸云粒子
execute as @e[type=wither_skull,tag=skill_skull] at @s run particle minecraft:gust_emitter_small ~ ~ ~ 0 0 0 0 1 force
execute as @e[type=wither_skull,tag=skill_skull] at @s run particle minecraft:cloud ~ ~ ~ 0.4 0.3 0.4 0.05 8 force
# 给一个向下的初始速度
execute as @e[type=wither_skull,tag=skill_skull] run data modify entity @s Motion set value [0.0d,-0.3d,0.0d]
tag @e[type=wither_skull,tag=skill_skull] remove skill_skull