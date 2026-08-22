tellraw @a ["",{"text":"[MM V1.4.1]","color":"#9f228c"},{"text":" Datapack Loaded!!"}]
schedule function mastermodel:setting_player 20t replace
schedule function mastermodel:setting_world 20t replace
advancement revoke @a only mastermodel:player_killed_by_hero

##初始化
#世界出生点营地
scoreboard objectives add Mastermodel dummy
scoreboard players add #starter Mastermodel 0
