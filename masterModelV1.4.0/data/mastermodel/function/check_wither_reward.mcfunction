# ---------- 推荐使用的干净检测（半径约 4 格） ----------
execute as @e[type=item,nbt={Item:{id:"minecraft:nether_star"}},distance=..20,limit=1,sort=nearest] at @s run function mastermodel:check_cage_area

# 如果检测到笼子
execute if entity @e[type=item,tag=cage_detected] run tellraw @s {"text":"请清除附近的强化深板岩","color":"red"}
execute if entity @e[type=item,tag=cage_detected] run return 0

# 合法击杀 → 给予奖励
loot give @s loot mastermodel:hero_sword
tellraw @s {"text":"勇者之证已解锁！","color":"gold"}
advancement grant @s only minecraft:nether/kill_wither