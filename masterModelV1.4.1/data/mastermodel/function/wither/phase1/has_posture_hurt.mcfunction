advancement revoke @s only mastermodel:wither/wither_hurt_by_player1

execute as @e[type=wither,tag=phase_1,tag=!no_posture,nbt={HurtTime:10s}] as @s run scoreboard players remove @s Wither_Posture 140
