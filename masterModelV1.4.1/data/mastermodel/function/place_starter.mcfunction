execute if score #starter Mastermodel matches 1.. run return 0

# 离玩家远一点，避免卡墙
execute positioned ~8 ~ ~8 positioned over world_surface run forceload add ~ ~
execute store result score #rot Mastermodel run random value 0..3
execute if score #rot Mastermodel matches 0 positioned ~8 ~ ~8 positioned over world_surface run place template mastermodel:starter ~ ~-3 ~ none none 1.0
execute if score #rot Mastermodel matches 1 positioned ~8 ~ ~8 positioned over world_surface run place template mastermodel:starter ~ ~-3 ~ clockwise_90 none 1.0
execute if score #rot Mastermodel matches 2 positioned ~8 ~ ~8 positioned over world_surface run place template mastermodel:starter ~ ~-3 ~ 180 none 1.0
execute if score #rot Mastermodel matches 3 positioned ~8 ~ ~8 positioned over world_surface run place template mastermodel:starter ~ ~-3 ~ counterclockwise_90 none 1.0
execute positioned ~8 ~ ~8 positioned over world_surface run forceload remove ~ ~
scoreboard players set #starter Mastermodel 1