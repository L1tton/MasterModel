#say charge
# 排除除徘徊以外的阶段
#execute if data entity @s {DragonPhase:9} run return 0
#execute if data entity @s {DragonPhase:5} run return 0

# 播放提示音
#playsound minecraft:entity.ender_dragon.growl hostile @a[distance=..80] ~ ~ ~ 1.5 0.7

# 让末影龙面向最近玩家
execute facing entity @p[distance=..150] eyes run tp @s ~ ~ ~ ~180 ~

# ===== 核心：精确计算方向向量 =====
# 在世界原点生成标记，并使用当前旋转的局部坐标前进1格（得到单位向量）
execute positioned 0.0 0.0 0.0 run summon marker ^ ^ ^1 {Tags:["charge_dir"]}

# 直接把标记的 Pos 复制给龙的 Motion（这是单位方向向量）
data modify entity @s Motion set from entity @e[type=marker,tag=charge_dir,limit=1] Pos

# 放大速度（调整这个数值控制冲锋力度，推荐 1.2 ~ 2.5）
execute store result entity @s Motion[0] double -0.003 run data get entity @s Motion[0] 1000
execute store result entity @s Motion[1] double 0.0045 run data get entity @s Motion[1] 1000
execute store result entity @s Motion[2] double -0.003 run data get entity @s Motion[2] 1000

# 清理临时标记
kill @e[type=marker,tag=charge_dir]