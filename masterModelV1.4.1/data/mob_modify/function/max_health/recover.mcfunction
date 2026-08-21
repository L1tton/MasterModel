# 恢复默认最大生命
execute store result score #max_health Temp run attribute @s minecraft:max_health get
execute if score #max_health Temp matches ..19 run attribute @s minecraft:max_health base set 20

tag @s remove has_debuff

particle minecraft:heart ~ ~1 ~ 0.5 0.5 0.5 0.1 5
particle minecraft:cherry_leaves ~ ~1.5 ~ 1 1 1 1 30