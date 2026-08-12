scoreboard players remove nexthunder thundertime 1
scoreboard players remove thisthunder thundertime 1

scoreboard players remove nextslime slimetime 1
scoreboard players remove thislime slimetime 1

#晴天钟显示字幕
execute as @a[predicate=weather:holding_clear_clock] at @s run function weather:clear_clock
