# 恢复默认边界（仅执行一次）
execute in minecraft:the_end run worldborder set 59999968
scoreboard players add #no_border the_end 1

#tellraw @a [{"text":"[MasterModel] ","color":"dark_purple"},{"text":"末影龙已击败，开放外岛边界。","color":"gold"}]