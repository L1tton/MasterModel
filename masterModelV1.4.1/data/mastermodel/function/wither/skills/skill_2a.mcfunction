##skill2_雷暴 在凋零周围随机生成闪电
# 在凋零脚下召唤临时标记
execute at @s run summon marker ~ ~ ~ {Tags:["wither_skill2_marker"]}
# 随机散布（minR=4,maxR=10）
execute as @e[type=marker,tag=wither_skill2_marker,limit=1,sort=nearest] at @s run spreadplayers ~ ~ 5 10 under 120 false @s
execute as @e[type=marker,tag=wither_skill2_marker,limit=1,sort=nearest] at @s run summon lightning_bolt ~ ~ ~
# 清理临时标记
kill @e[type=marker,tag=wither_skill2_marker]