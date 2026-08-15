advancement revoke @s only mastermodel:wither/wither_hurt_by_player2

execute as @e[type=wither,tag=phase_1,tag=no_posture,nbt={HurtTime:10s}] as @s run scoreboard players add @s Wither_Posture 200
