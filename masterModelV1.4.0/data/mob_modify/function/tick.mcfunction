tag @a add elder_recover
tag @a add wither_recover
tag @a add ender_recover

# 远古守卫者 添加"elder_debuff"标签
execute as @e[type=elder_guardian] at @s run tag @a[distance=..50,predicate=mob_modify:is_mining_fatigue] add elder_debuff
tag @a[tag=elder_debuff] remove elder_recover
execute as @a[tag=elder_recover] run function mob_modify:max_health/recover

#凋零
execute as @e[type=wither] at @s run tag @a[distance=..76] add wither_debuff
tag @a[tag=elder_debuff] remove wither_recover
execute as @a[tag=wither_recover] run function mob_modify:max_health/recover

#末影龙
execute as @e[type=ender_dragon] at @s run tag @a[distance=256] add ender_debuff
tag @a[tag=elder_debuff] remove ender_recover
execute as @a[tag=wither_recover] run function mob_modify:max_health/recover

# 清理所有标签
execute as @a[tag=elder_debuff] run function mob_modify:max_health/elder_debuff
execute as @a[tag=wither_debuff] run function mob_modify:max_health/wither_debuff
execute as @a[tag=ender_debuff] run function mob_modify:max_health/ender_debuff

tag @a remove elder_debuff
tag @a remove wither_debuff
tag @a remove ender_debuff
