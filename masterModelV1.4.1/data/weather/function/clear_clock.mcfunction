execute store result score clockOp Lunarphase run time query day repetition
scoreboard players operation clockOp Lunarphase %= 8 Const
execute if score clockOp Lunarphase matches 0 run scoreboard players set clockOp Lunarphase 8
scoreboard players operation tmp Const = 9 Const
scoreboard players operation tmp Const -= clockOp Lunarphase
scoreboard players operation clockOp Lunarphase = tmp Const
scoreboard players set tmp Const 0
scoreboard players operation clockOp Lunarphase *= 24000 Const
scoreboard players operation clockOp Lunarphase += 6000 Const

execute store result score clocktime Daytime run time query day
scoreboard players operation clockOp Lunarphase -= clocktime Daytime
scoreboard players operation clockOp Lunarphase -= nextslime slimetime


title @s actionbar {"text":"好像没有什么特别的。","color":"gray","bold":true}
#雷暴
execute if score nexthunder thundertime matches 6000..24000 run title @s actionbar {"text":"云层中暗流涌动..","color":"light_purple","bold":true}
execute if score nexthunder thundertime matches ..5999 run title @s actionbar {"text":"雷云将至..","color":"dark_red","bold":true}
execute if score thisthunder thundertime matches 1.. run title @s actionbar {"text":"雷暴正在发生","color":"dark_red","bold":true}
#史莱姆雨
execute if score clockOp Lunarphase matches 0..12000 run title @s actionbar {"text":"史莱姆雨将在下个满月后发生!","color":"green","bold":true}
execute if score clockOp Lunarphase matches 192000..204000 run title @s actionbar {"text":"史莱姆雨即将落下！","color":"dark_green","bold":true}
execute if score thislime slimetime matches 1.. run title @s actionbar {"text":"史莱姆雨正在落下","color":"dark_green","bold":true}