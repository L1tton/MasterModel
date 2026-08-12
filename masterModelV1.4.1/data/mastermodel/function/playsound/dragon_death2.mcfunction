#say playsound2

execute as @a[tag=playsound] at @s run playsound entity.ender_dragon.hurt master @s ~ ~ ~ 0.2 1
execute as @a[tag=playsound] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 0.6 0.8
execute as @a[tag=playsound] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.672
schedule function mastermodel:playsound/dragon_death3 8t