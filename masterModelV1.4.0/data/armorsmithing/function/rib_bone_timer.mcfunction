# 20tick计时器
execute as @s[scores={rib_bone_timer=0..}] run scoreboard players add @s rib_bone_timer 1
execute as @s[scores={rib_bone_timer=20..}] run scoreboard players set @s rib_bone_timer 0
#title @s actionbar {"text": "铁甲计时器: ","color":"gold","extra":[{"score":{"name":"@s","objective":"rib_bone_timer"}}]}