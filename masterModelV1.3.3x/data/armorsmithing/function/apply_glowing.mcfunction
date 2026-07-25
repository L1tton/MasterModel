# 分配队伍（颜色）
team join glow_red @e[distance=..48,type=#mob_modify:monsters]
team join glow_green @e[distance=..24,type=#mob_modify:non_monsters]
team join glow_blue @a[distance=..64]

# 应用 1 秒发光（每 tick 刷新）
execute as @a[scores={glowing_timer=12..}] at @s run effect give @e[distance=24..48,type=#mob_modify:monsters] glowing 1 0 true
execute as @a[scores={glowing_timer=15..}] at @s run effect give @e[distance=12..23.9,type=#mob_modify:monsters] glowing 1 0 true
execute as @a[scores={glowing_timer=18..}] at @s run effect give @e[distance=0..11.9,type=#mob_modify:monsters] glowing 1 0 true
execute as @a[scores={glowing_timer=15..}] at @s run effect give @e[distance=..24,type=#mob_modify:non_monsters] glowing 1 0 true
execute as @a[scores={glowing_timer=1..}] at @s run effect give @a[distance=0.2..64] glowing 1 0 true

function armorsmithing:sound_player_timer
function armorsmithing:glowing_timer