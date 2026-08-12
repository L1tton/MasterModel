schedule function weather:weathers/slime_spawn 35t replace

# 在玩家位置召唤一个不可见的标记实体
execute if score thislime slimetime matches 1.. at @a run summon marker ~ ~ ~ {Tags:["slime_marker"],NoGravity:1b}
execute at @a run spreadplayers ~ ~ 0 32 false @e[tag=slime_marker,distance=..0.5,limit=1]

execute store result score random_storage random_storage run random value 1..10
execute if score thislime slimetime matches 1.. run execute if score random_storage random_storage matches 1..6 at @e[tag=slime_marker] run \
summon slime ~ ~64 ~ {Tags:["rainslime","strong"],Size:0,active_effects:[{id:slow_falling,duration:400,show_particles:false}]}
execute if score thislime slimetime matches 1.. run execute if score random_storage random_storage matches 7..9 at @e[tag=slime_marker] run \
summon slime ~ ~64 ~ {Tags:["rainslime","strong"],Size:1,active_effects:[{id:slow_falling,duration:400,show_particles:false}]}
execute if score thislime slimetime matches 1.. run execute if score random_storage random_storage matches 10 at @e[tag=slime_marker] run \
summon slime ~ ~64 ~ {Tags:["rainslime","strong"],Size:3,active_effects:[{id:slow_falling,duration:400,show_particles:false}]}

# 移除标记
kill @e[tag=slime_marker]