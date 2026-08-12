###————————启动计分板————————
#该计分板用于启动ender_dragon的tick函数和设置末地边界
scoreboard objectives add the_end dummy
scoreboard players add #no_border the_end 0
scoreboard players add #has_the_end the_end 0

scoreboard objectives add crystal_timer dummy
scoreboard players set #timer crystal_timer 0
# 可自定义间隔（单位：tick，20 tick = 1 秒）
scoreboard players set #interval crystal_timer 4800

# 二阶段额外的冲锋
scoreboard objectives add charge_timer dummy
# 可自定义间隔（例如:600对应30~60s）
scoreboard players set #p2_timer charge_timer 600
scoreboard players set #p3_timer charge_timer 100

#bossbar
bossbar add mastermodel:crystal_reset {"text":"末影水晶重置","color":"light_purple"}
bossbar set mastermodel:crystal_reset max 4800
bossbar set mastermodel:crystal_reset style notched_10
bossbar set mastermodel:crystal_reset color purple
bossbar set mastermodel:crystal_reset visible false

#给末影人创建一个队伍
team add glow_purple
team modify glow_purple color dark_purple
team modify glow_purple nametagVisibility never
team modify glow_purple deathMessageVisibility never
team modify glow_purple collisionRule never