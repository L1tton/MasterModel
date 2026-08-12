#say playsound1
tag @s add phase_end
execute in minecraft:the_end run tag @a[distance=..200] add playsound
execute as @a[tag=playsound] at @s run playsound ambient.cave master @s ~ ~ ~ 0.15 1
execute as @a[tag=playsound] at @s run playsound entity.ender_dragon.hurt master @s ~ ~ ~ 0.2 1
execute as @a[tag=playsound] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 0.8 0.8
execute as @a[tag=playsound] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.672
schedule function mastermodel:playsound/dragon_death2 4t