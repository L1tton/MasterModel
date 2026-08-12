# 如果这个柱子附近已经有水晶，就跳过
#say check
execute if entity @e[type=end_crystal,distance=..14] run return 0

# 按可能的高度从上到下检测基岩（找到就召唤并停止）
execute if block ~ 103 ~ bedrock run summon end_crystal ~ 104 ~ {ShowBottom:1b}
execute if block ~ 103 ~ bedrock run return 0

execute if block ~ 100 ~ bedrock run summon end_crystal ~ 101 ~ {ShowBottom:1b}
execute if block ~ 100 ~ bedrock run return 0

execute if block ~ 97 ~ bedrock run summon end_crystal ~ 98 ~ {ShowBottom:1b}
execute if block ~ 97 ~ bedrock run return 0

execute if block ~ 94 ~ bedrock run summon end_crystal ~ 95 ~ {ShowBottom:1b}
execute if block ~ 94 ~ bedrock run return 0

execute if block ~ 91 ~ bedrock run summon end_crystal ~ 92 ~ {ShowBottom:1b}
execute if block ~ 91 ~ bedrock run return 0

execute if block ~ 88 ~ bedrock run summon end_crystal ~ 89 ~ {ShowBottom:1b}
execute if block ~ 88 ~ bedrock run return 0

execute if block ~ 85 ~ bedrock run summon end_crystal ~ 86 ~ {ShowBottom:1b}
execute if block ~ 85 ~ bedrock run return 0

execute if block ~ 82 ~ bedrock run summon end_crystal ~ 83 ~ {ShowBottom:1b}
execute if block ~ 82 ~ bedrock run return 0

execute if block ~ 79 ~ bedrock run summon end_crystal ~ 80 ~ {ShowBottom:1b}
execute if block ~ 79 ~ bedrock run return 0

execute if block ~ 76 ~ bedrock run summon end_crystal ~ 77 ~ {ShowBottom:1b}