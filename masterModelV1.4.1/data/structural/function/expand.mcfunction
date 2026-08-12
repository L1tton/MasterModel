#say 已执行expand
# 写入当前半径（只写正数）
execute store result storage structural:temp r int 1 run scoreboard players get #r radius
execute store result storage structural:temp dr1 int 1 run scoreboard players get #dr1 radius
execute store result storage structural:temp dr2 int 1 run scoreboard players get #dr2 radius

# 调用
function structural:clone_cube with storage structural:temp

# 半径+1
scoreboard players add #r radius 1
scoreboard players add #dr1 radius 1
scoreboard players remove #dr2 radius 1

execute if score #r radius <= #max radius run schedule function structural:expand_entity 3t
execute if score #r radius > #max radius run execute as @e[type=wither,tag=!wither_set] at @s run fill ~ ~128 ~ ~47 ~146 ~47 air replace