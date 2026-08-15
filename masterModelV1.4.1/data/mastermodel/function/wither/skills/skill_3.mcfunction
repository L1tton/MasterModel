##skill3_召唤骷髅 在凋零附近召唤一只凋零骷髅
#say summon skeleton

execute as @s run summon wither_skeleton ~ ~ ~ {Tags:["skill_tp","wither_skill3","strong"],Health:20f,attributes:[{id:"minecraft:max_health",base:30},{id:"minecraft:attack_damage",base:8},{id:"minecraft:armor_toughness",base:20},{id:"minecraft:movement_speed",base:0.3},{id:"minecraft:follow_range",base:48}],equipment:{mainhand:{id:"minecraft:stone_sword",count:1}},active_effects:[{id:"minecraft:strength",amplifier:1,duration:-1,show_particles:0b}]}
#随机偏移x
execute as @e[type=wither_skeleton,tag=skill_tp] store result score @s Temp run data get entity @s Pos[0] 100
execute as @e[type=wither_skeleton,tag=skill_tp] store result score #random Temp run random value -600..600
execute as @e[type=wither_skeleton,tag=skill_tp] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=wither_skeleton,tag=skill_tp] store result entity @s Pos[0] double 0.01 run scoreboard players get @s Temp
#z
execute as @e[type=wither_skeleton,tag=skill_tp] store result score @s Temp run data get entity @s Pos[2] 100
execute as @e[type=wither_skeleton,tag=skill_tp] store result score #random Temp run random value -600..600
execute as @e[type=wither_skeleton,tag=skill_tp] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=wither_skeleton,tag=skill_tp] store result entity @s Pos[2] double 0.01 run scoreboard players get @s Temp

# 给一个向下的初始速度
tag @e[type=wither_skeleton,tag=skill_tp] remove skill_tp