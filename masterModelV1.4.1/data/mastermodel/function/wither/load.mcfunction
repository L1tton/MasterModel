scoreboard objectives add Wither_Health dummy
scoreboard objectives add Wither_Posture dummy
scoreboard objectives add Wither_Timer dummy
scoreboard objectives add Wither_Timer_Skill0 dummy
scoreboard objectives add Wither_Skill dummy
scoreboard objectives add Temp dummy
scoreboard players set #max_posture Wither_Posture 500
#execute store result storage mastermodel:temp max_posture int 1 run scoreboard players get #max_posture Wither_Posture

bossbar add mastermodel:wither_posture {"text":"架势条","color":"gray"}
bossbar set mastermodel:wither_posture max 500
bossbar set mastermodel:wither_posture style notched_6
bossbar set mastermodel:wither_posture color white
bossbar set mastermodel:wither_posture visible false