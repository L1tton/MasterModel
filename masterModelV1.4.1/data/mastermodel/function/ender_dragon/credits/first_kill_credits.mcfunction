# 该函数由击杀成就奖励触发：每个玩家一生只执行一次
# 首次击败后开放边界（世界级，内部已做只执行一次保护）
function mastermodel:ender_dragon/restore_border

# 启动该玩家的滚动字幕
scoreboard players set @s mm_credits 1
tag @s add mm_credits

title @s times 10 50 10
title @s title {"text":"The End","color":"gold","bold":true}
title @s subtitle {"text":"All power has been unleashed","color":"gray","italic":true}
execute at @s run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 0.8 1
