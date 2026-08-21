# 玩家首次击杀末影龙后的滚动制作组说明
scoreboard players add @s mm_credits 1

execute if score @s mm_credits matches 40 run title @s actionbar {"text":"—— MasterModel ——","color":"gold","bold":true}

execute if score @s mm_credits matches 80 run title @s actionbar {"text":"数据包:MasterModel V1.4.1","color":"gold"}

execute if score @s mm_credits matches 120 run title @s actionbar {"text":"制作者:Liang_bin","color":"gold"}

execute if score @s mm_credits matches 160 run title @s actionbar {"text":"感谢游玩 Thanks for playing","color":"gold"}

execute if score @s mm_credits matches 200 run title @s actionbar {"text":"","color":"white"}

execute if score @s mm_credits matches 200 run tag @s remove mm_credits
execute if score @s mm_credits matches 200 run scoreboard players set @s mm_credits 0
