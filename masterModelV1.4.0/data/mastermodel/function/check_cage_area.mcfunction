# 在下界之星位置检测周围是否有强化深板岩
execute if block ~ ~ ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~1 ~ ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~-1 ~ ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~1 ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~-1 ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~ ~1 minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~ ~-1 minecraft:reinforced_deepslate run tag @s add cage_detected

execute if block ~2 ~ ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~-2 ~ ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~2 ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~-2 ~ minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~ ~2 minecraft:reinforced_deepslate run tag @s add cage_detected
execute if block ~ ~ ~-2 minecraft:reinforced_deepslate run tag @s add cage_detected