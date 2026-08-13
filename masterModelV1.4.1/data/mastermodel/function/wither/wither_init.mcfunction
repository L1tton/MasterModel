##移除进度,构建战斗平台，设定凋灵
advancement revoke @s only mastermodel:wither/summon_wither_init

# Intro Sequence
title @a title {"text":"§4§lTHE WITHER","color":"dark_red","bold":true}
title @a subtitle {"text":"§7§oA horrible chill goes down your spine..","color":"gray","italic":true}
title @a times 10 60 20
playsound minecraft:entity.wither.spawn master @a ~ ~ ~ 1 0.8

schedule function structural:strat_animate 1t
schedule function mastermodel:wither/wither_set 221t

