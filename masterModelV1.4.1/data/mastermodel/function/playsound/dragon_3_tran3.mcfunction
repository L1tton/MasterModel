#say playsound1
execute as @a[tag=playsound] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 0.3 0.6732
execute as @a[tag=playsound] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 0.5 0.672
schedule function mastermodel:playsound/dragon_3_tran4 4t