##skill4_灾厄法术 在凋零附近玩家上方生成不详之物生成器

execute as @a[distance=..50] at @s positioned ~ ~5 ~ run loot spawn ~ ~ ~ loot mastermodel:wither/random_items
execute as @a[distance=..50] at @s positioned ~ ~5 ~ as @e[type=item,limit=1,sort=nearest,distance=..1] run data modify storage mastermodel:temp Item set from entity @s Item
execute as @a[distance=..50] at @s positioned ~ ~5 ~ run kill @e[type=item,limit=1,sort=nearest,distance=..1]
execute as @a[distance=..50] at @s positioned ~ ~5 ~ run summon minecraft:ominous_item_spawner ~ ~ ~ {spawn_item_after_ticks:40L,Tags:["wither_skill4"]}
execute as @a[distance=..50] at @s positioned ~ ~5 ~ as @e[type=ominous_item_spawner,tag=wither_skill4,limit=1,sort=nearest] run data modify entity @s item set from storage mastermodel:temp Item
execute as @a[distance=..50] at @s positioned ~ ~5 ~ run tag @e[type=ominous_item_spawner,tag=wither_skill4,limit=1,sort=nearest] remove wither_skill4