#say playsound1
execute as @a[tag=playsound] at @s run playsound block.note_block.didgeridoo master @s ~ ~ ~ 1 0.6732
execute as @a[tag=playsound] at @s run playsound block.note_block.basedrum master @s ~ ~ ~ 1 0.5
schedule function mastermodel:playsound/dragon_2_tran3 8t