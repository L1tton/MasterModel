###如果没有任何一个玩家进入过末地，跳过下面所有函数
execute if score #has_the_end the_end matches 0 run return 0

#say has end

# 首次进入末地后的第一条龙、以及之后每次复活：各执行一次 dragon_init
execute as @e[type=ender_dragon,tag=!mm_inited] at @s run function mastermodel:ender_dragon/credits/dragon_init

# 首先赋予末影龙strong tag 防止血量判定出现问题
execute as @e[type=ender_dragon,tag=!strong,sort=random] at @s run function mob_modify:spawning/ender_dragon
# 把末影龙当前血量存进计分板
execute in minecraft:the_end as @e[type=ender_dragon,limit=1] store result score #dragon_hp crystal_timer run data get entity @s Health

# 阶段转换
execute in minecraft:the_end if entity @e[type=ender_dragon,limit=1] if score #dragon_hp crystal_timer matches ..200 run execute as @e[type=ender_dragon,tag=!phase_2] at @s run function mastermodel:ender_dragon/phase_2_transition
execute in minecraft:the_end if entity @e[type=ender_dragon,limit=1] if score #dragon_hp crystal_timer matches ..50 run execute as @e[type=ender_dragon,tag=!phase_3] at @s run function mastermodel:ender_dragon/phase_3_transition

## ========== 一阶段行为 ==========
##水晶恢复
# 仅当末影龙不处于二阶段时才增加计时器
execute in minecraft:the_end if entity @e[type=ender_dragon,tag=!phase_2,limit=1] run scoreboard players add #timer crystal_timer 1

# 到时间/不存在末影龙就重置并归零
execute if score #timer crystal_timer >= #interval crystal_timer run function mastermodel:ender_dragon/reset_crystals
execute if score #timer crystal_timer >= #interval crystal_timer run scoreboard players set #timer crystal_timer 0
execute unless entity @e[type=ender_dragon] run scoreboard players set #timer crystal_timer 0

## ========== 二阶段行为 ==========
execute in minecraft:the_end if entity @e[type=minecraft:ender_dragon,tag=phase_2,tag=!phase_3,limit=1] run function mastermodel:ender_dragon/phase_2
## ========== 三阶段行为 ==========
execute in minecraft:the_end if entity @e[type=minecraft:ender_dragon,tag=phase_3,limit=1] run function mastermodel:ender_dragon/phase_3

## ========== 死亡行为 ==========
execute in minecraft:the_end if entity @e[type=ender_dragon,limit=1] if score #dragon_hp crystal_timer matches ..1 run execute as @e[type=ender_dragon,tag=!phase_end] at @s run function mastermodel:playsound/dragon_death

## ========== 世界边界/字幕 ==========
execute if score #no_border the_end matches 0 run function mastermodel:ender_dragon/setup_border
execute if score #no_border the_end matches 1 run tellraw @a [{"text":"[MasterModel] ","color":"dark_purple"},{"text":"末影龙已击败，开放外岛边界。","color":"gold"}]
execute if score #no_border the_end matches 1 run scoreboard players add #no_border the_end 1

## 首次击杀滚动字幕
execute as @a[tag=mm_credits,scores={mm_credits=1..}] run function mastermodel:ender_dragon/credits/credits_tick

##Boss 栏控制 

# 一阶段：显示并更新进度
execute if entity @e[type=ender_dragon,tag=!phase_2,limit=1] run bossbar set mastermodel:crystal_reset visible true
execute in the_end positioned 0 64 0 if score #dragon_hp crystal_timer matches 201.. run bossbar set mastermodel:crystal_reset players @a[distance=..256]
execute if entity @e[type=ender_dragon,tag=!phase_2,limit=1] store result bossbar mastermodel:crystal_reset value run scoreboard players get #timer crystal_timer
# 二阶段 或 没有末影龙：隐藏
execute unless entity @e[type=ender_dragon,tag=!phase_2,limit=1] run bossbar set mastermodel:crystal_reset visible false
execute unless entity @e[type=ender_dragon] run bossbar set mastermodel:crystal_reset visible false
