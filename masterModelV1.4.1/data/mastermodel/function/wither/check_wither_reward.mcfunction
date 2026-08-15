tellraw @s [{"text":"[MasterModel] ","color":"dark_red"},{"text":"勇者之证已解锁！","color":"gold"}]

# 只给附近玩家播放标题（以击杀者为中心）
title @a[distance=..64] times 10 60 20
title @a[distance=..64] title {"text":"THE HERO","color":"gold","bold":true}
title @a[distance=..64] subtitle {"text":"You feel the power gathering...","color":"gray","italic":true}

playsound minecraft:block.end_portal.spawn master @a[distance=..64] ~ ~ ~ 1.1 0.65
playsound minecraft:entity.ender_dragon.growl master @a[distance=..64] ~ ~ ~ 0.9 0.55
playsound minecraft:ui.toast.challenge_complete master @a[distance=..64] ~ ~ ~ 1 0.85
