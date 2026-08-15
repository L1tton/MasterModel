scoreboard objectives add Wither_Health dummy
scoreboard objectives add Wither_Posture dummy
scoreboard objectives add Wither_Tran dummy
scoreboard objectives add Wither_Skill dummy
scoreboard objectives add Temp dummy
#分别用于计算技能cd/技能持续时间/技能攻击频率
scoreboard objectives add Wither_Timer dummy
scoreboard objectives add Wither_Timer_Skill dummy
scoreboard objectives add Wither_Timer_Skill0 dummy
scoreboard objectives add Wither_Timer_Skill1 dummy
scoreboard objectives add Wither_Timer_Skill2 dummy
scoreboard objectives add Wither_Timer_Skill3 dummy
scoreboard objectives add Wither_Timer_Skill4 dummy
scoreboard objectives add Wither_Timer_Skill5 dummy
scoreboard objectives add Wither_Timer_Skill6 dummy
scoreboard objectives add Wither_Timer_Skill7 dummy

scoreboard players set #max_posture Wither_Posture 1000
scoreboard players set #max_tran Wither_Tran 400

#bossbar
bossbar add mastermodel:wither_posture {"text":"架势条","color":"gray"}
bossbar set mastermodel:wither_posture max 1000
bossbar set mastermodel:wither_posture style notched_6
bossbar set mastermodel:wither_posture color white
bossbar set mastermodel:wither_posture visible false

bossbar add mastermodel:wither_tran {"text":"..转换..","color":"white",bold:true,shadow_color:[0.6,0.6,0.6,0.7]}
bossbar set mastermodel:wither_tran max 400
bossbar set mastermodel:wither_tran style notched_10
bossbar set mastermodel:wither_tran color white
bossbar set mastermodel:wither_tran visible false