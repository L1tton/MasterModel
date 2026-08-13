#say summon skull

#在凋零上方随机位置垂直向下的生成骷髅头
execute as @s run summon wither_skull ~ ~10 ~ {Tags:["skill_skull"]}
data modify entity @e[type=wither_skull,tag=skill_skull,limit=1,sort=nearest] Owner set from entity @s UUID

#随机偏移x
execute as @e[type=wither_skull,tag=skill_skull] store result score @s Temp run data get entity @s Pos[0] 100
execute as @e[type=wither_skull,tag=skill_skull] store result score #random Temp run random value -600..600
execute as @e[type=wither_skull,tag=skill_skull] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=wither_skull,tag=skill_skull] store result entity @s Pos[0] double 0.01 run scoreboard players get @s Temp
#z
execute as @e[type=wither_skull,tag=skill_skull] store result score @s Temp run data get entity @s Pos[2] 100
execute as @e[type=wither_skull,tag=skill_skull] store result score #random Temp run random value -600..600
execute as @e[type=wither_skull,tag=skill_skull] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=wither_skull,tag=skill_skull] store result entity @s Pos[2] double 0.01 run scoreboard players get @s Temp

# 给一个向下的初始速度
execute as @e[type=wither_skull,tag=skill_skull] run data modify entity @s Motion set value [0.0d,-0.3d,0.0d]
tag @e[type=wither_skull,tag=skill_skull] remove skill_skull