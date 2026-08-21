# 每条末影龙实体只执行一次（首次生成 / 复活）
tag @s add mm_inited

# 重置本场战斗用到的计时器与阶段相关 bossbar
scoreboard players set #timer crystal_timer 0
bossbar set mastermodel:crystal_reset visible false

title @a[predicate=mastermodel:in_the_end] times 10 70 20
title @a[predicate=mastermodel:in_the_end] title {"text":"§5§lTHE Dragon","color":"dark_purple","bold":true}
title @a[predicate=mastermodel:in_the_end] subtitle {"text":"§7§oA The air is getting colder around you...","color":"gray","italic":true}

execute as @a[predicate=mastermodel:in_the_end] at @s run playsound minecraft:entity.ender_dragon.growl master @s ~ ~ ~ 0.8 0.7
execute as @a[predicate=mastermodel:in_the_end] at @s run playsound minecraft:ambient.cave master @s ~ ~ ~ 0.4 0.8
