##skill5_灾厄雨 在凋零附近上方生成不详之物生成器

execute as @s at @s positioned ~ ~5 ~ run loot spawn ~ ~ ~ loot mastermodel:wither/random_items
execute as @s at @s positioned ~ ~5 ~ as @e[type=item,limit=1,sort=nearest,distance=..1] run data modify storage mastermodel:temp Item set from entity @s Item
execute as @s at @s positioned ~ ~5 ~ run kill @e[type=item,limit=1,sort=nearest,distance=..1]
execute as @s at @s positioned ~ ~5 ~ run summon minecraft:ominous_item_spawner ~ ~ ~ {spawn_item_after_ticks:40L,Tags:["wither_skill5"]}
execute as @s at @s positioned ~ ~5 ~ as @e[type=ominous_item_spawner,tag=wither_skill5,limit=1,sort=nearest] run data modify entity @s item set from storage mastermodel:temp Item

#随机偏移x
execute as @e[type=ominous_item_spawner,tag=wither_skill5] store result score @s Temp run data get entity @s Pos[0] 100
execute as @e[type=ominous_item_spawner,tag=wither_skill5] store result score #random Temp run random value -1800..1800
execute as @e[type=ominous_item_spawner,tag=wither_skill5] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=ominous_item_spawner,tag=wither_skill5] store result entity @s Pos[0] double 0.01 run scoreboard players get @s Temp
#z
execute as @e[type=ominous_item_spawner,tag=wither_skill5] store result score @s Temp run data get entity @s Pos[2] 100
execute as @e[type=ominous_item_spawner,tag=wither_skill5] store result score #random Temp run random value -1800..1800
execute as @e[type=ominous_item_spawner,tag=wither_skill5] run scoreboard players operation @s Temp += #random Temp
execute as @e[type=ominous_item_spawner,tag=wither_skill5] store result entity @s Pos[2] double 0.01 run scoreboard players get @s Temp

tag @e[type=ominous_item_spawner,tag=wither_skill5] remove wither_skill5