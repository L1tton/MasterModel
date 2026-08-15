##移除进度,构建战斗平台，设定凋灵
advancement revoke @s only mastermodel:wither/summon_wither_init

# Intro Sequence
title @a title {"text":"§4§lTHE WITHER","color":"dark_red","bold":true}
title @a subtitle {"text":"§7§oA horrible chill goes down your spine..","color":"gray","italic":true}
title @a times 10 60 20
playsound minecraft:entity.wither.spawn master @a[distance=..64] ~ ~ ~ 1.4 0.65
playsound minecraft:entity.warden.heartbeat master @a[distance=..64] ~ ~ ~ 1.8 0.75
playsound minecraft:block.end_portal.spawn master @a[distance=..64] ~ ~ ~ 0.9 0.5
playsound minecraft:ambient.cave master @a[distance=..64] ~ ~ ~ 1.2 0.55

schedule function structural:strat_animate 1t
schedule function mastermodel:wither/wither_set 221t

