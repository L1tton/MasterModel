schedule function mastermodel:setting_player 20t replace

execute as @a[tag=!masterModel] at @s run attribute @s fall_damage_multiplier base set 2
execute as @a[tag=!masterModel] at @s run attribute @s burning_time base set 1.5
execute as @a[tag=!masterModel] at @s run attribute @s attack_knockback base set 0.1
execute as @a[tag=!masterModel] at @s run tell @s 本服务器禁止开挂,开地图,开mod,开世界,开宇宙
#出生点结构
execute as @a[tag=!masterModel] at @s if dimension minecraft:overworld run function mastermodel:place_starter
execute as @a[tag=!masterModel] at @s run tag @s add masterModel

