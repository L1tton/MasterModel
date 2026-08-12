# 只在末地执行，且仅第一次
execute in minecraft:the_end run worldborder center 0 0
execute in minecraft:the_end run worldborder set 700
# ↑ 这里改成你想要的直径（推荐 200~500，覆盖主岛 + 一点缓冲）

#tellraw @a [{"text":"[End Border] ","color":"dark_purple"},{"text":"末地世界边界已设置（首次进入）。","color":"green"}]