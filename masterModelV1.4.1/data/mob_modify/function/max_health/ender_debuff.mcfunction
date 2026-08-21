tag @s add has_debuff
# 设置最大生命 = 10
attribute @s minecraft:max_health base set 10
# 粒子效果
particle minecraft:raid_omen ~ ~1 ~ 0.5 0.5 0.5 0.1 10
particle minecraft:crimson_spore ~ ~1 ~ 0.5 0.5 0.5 0.1 90
playsound entity.player.hurt player @s ~ ~ ~ 1 0.8