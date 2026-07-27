# 创建计分板用于计时
scoreboard objectives add rib_bone_timer dummy {"text": "链甲潜行计时器"}
scoreboard objectives add rib_bone_timer2 dummy {"text": "链甲计时器"}
scoreboard objectives add sound_player_timer dummy {"text": "声音播放计时器"}
scoreboard objectives add glowing_timer dummy {"text": "声音播放计时器"}

# 为所有玩家设置初始值
execute as @a run scoreboard players set @s rib_bone_timer 0
execute as @a run scoreboard players set @s rib_bone_timer2 0
execute as @a run scoreboard players set @s sound_player_timer 0
execute as @a run scoreboard players set @s glowing_timer 0

# 启用触发器
scoreboard players enable @a rib_bone_timer
scoreboard players enable @a rib_bone_timer2
scoreboard players enable @a sound_player_timer
scoreboard players enable @a glowing_timer
#tellraw @a {"text": "链甲生命恢复已加载！", "color": "green"}