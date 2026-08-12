# 20tick计时器
execute as @a[scores={sound_player_timer=0..}] run scoreboard players add @s sound_player_timer 1
execute as @a[scores={sound_player_timer=50..}] run scoreboard players set @s sound_player_timer 0
#title @s actionbar {"text": "声音计时器: ","color":"gold","extra":[{"score":{"name":"@s","objective":"sound_player_timer"}}]}