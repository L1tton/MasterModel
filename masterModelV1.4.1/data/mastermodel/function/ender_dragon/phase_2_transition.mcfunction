tag @s add phase_2

execute as @a run team join glow_purple @e[distance=..64,type=enderman]
execute as @a run effect give @e[distance=..64,type=enderman,team=glow_purple] glowing 60 0 true 
execute as @e[type=minecraft:enderman,team=glow_purple] at @s run data modify entity @s angry_at set from entity @n[type=minecraft:player,distance=..64] UUID
execute as @e[type=minecraft:enderman,team=glow_purple] run data modify entity @s anger_end_time set value 1200

effect give @a darkness 4 0 true

function mastermodel:playsound/dragon_2_tran

#execute as @e[type=minecraft:enderman] at @s run effect clear