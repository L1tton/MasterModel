# 1. 先清本 tick 的范围标签
tag @a remove elder_debuff
tag @a remove wither_debuff
tag @a remove ender_debuff

# 2. 标记范围内的人
execute as @e[type=elder_guardian] at @s run tag @a[distance=..50,predicate=mob_modify:is_mining_fatigue] add elder_debuff
execute as @e[type=wither] at @s run tag @a[distance=..50] add wither_debuff
execute as @e[type=ender_dragon] at @s run tag @a[distance=..256] add ender_debuff

# 3. 离开范围才恢复（上一 tick 在范围内、这一 tick 不在）
execute as @a[tag=need_recover,tag=!elder_debuff,tag=!wither_debuff,tag=!ender_debuff] at @s run function mob_modify:max_health/recover
tag @a[tag=need_recover] remove need_recover

# 4. 在范围内：套 debuff，并记下“下次离开时要 recover”
execute as @a[tag=elder_debuff,tag=!has_debuff] at @s run function mob_modify:max_health/elder_debuff
execute as @a[tag=wither_debuff,tag=!has_debuff] at @s run function mob_modify:max_health/wither_debuff
execute as @a[tag=ender_debuff,tag=!has_debuff] at @s run function mob_modify:max_health/ender_debuff

tag @a[tag=elder_debuff] add need_recover
tag @a[tag=wither_debuff] add need_recover
tag @a[tag=ender_debuff] add need_recover
