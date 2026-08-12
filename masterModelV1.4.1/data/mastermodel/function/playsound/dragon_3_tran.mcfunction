#say playsound1
execute in minecraft:the_end run tag @a[distance=..200] add playsound
execute as @a[tag=playsound] at @s run playsound entity.ender_dragon.growl master @s ~ ~ ~ 0.07 0.5
execute as @a[tag=playsound] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 0.5 0.6732
execute as @a[tag=playsound] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.5 0.672
schedule function mastermodel:playsound/dragon_3_tran2 8t