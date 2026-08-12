#$tellraw @a {"text":"正在克隆半径 $(r)","color":"yellow"}
#$tellraw @a {"text":"当前dr1: $(dr1)"}
#$tellraw @a {"text":"当前dr2: $(dr2)"}

# 临时结构中心在 5 ~128 5
# 从中心向外克隆半径 r 的立方体，再放到玩家脚下中心
$clone ~$(dr1) ~128 ~$(dr1) ~$(dr2) ~132 ~$(dr2) ~-$(r) ~-5 ~-$(r) masked
$clone ~$(dr1) ~133 ~$(dr1) ~$(dr2) ~146 ~$(dr2) ~-$(r) ~ ~-$(r)
#clone ~7 ~128 ~7 ~3 ~140 ~3 ~-5 ~-1 ~-5

#播放声音
#石块
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~$(r) ~-1 ~
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~-$(r) ~-1 ~
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~ ~-1 ~$(r)
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~ ~-1 ~-$(r)
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~$(r) ~-1 ~$(r)
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~-$(r) ~-1 ~-$(r)
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~-$(r) ~-1 ~$(r)
$execute if score #r radius <= #18 radius run playsound block.stone.place block @a ~$(r) ~-1 ~-$(r)
#灵魂沙
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~$(r) ~ ~
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~-$(r) ~ ~
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~ ~ ~$(r)
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~ ~ ~-$(r)
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~$(r) ~ ~$(r)
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~-$(r) ~ ~-$(r)
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~-$(r) ~ ~$(r)
$execute if score #r radius >= #18 radius run playsound block.soul_sand.place block @a ~$(r) ~ ~-$(r)
#栏杆
$execute if score #r radius = #3 radius run playsound block.copper.place block @a ~$(r) ~2 ~
$execute if score #r radius = #3 radius run playsound block.copper.place block @a ~-$(r) ~2 ~
$execute if score #r radius = #3 radius run playsound block.copper.place block @a ~ ~2 ~$(r)
$execute if score #r radius = #3 radius run playsound block.copper.place block @a ~ ~2 ~-$(r)
#镶金黑石
$execute if score #r radius = #6 radius run playsound block.gilded_blackstone.place block @a ~$(r) ~-1 ~
$execute if score #r radius = #6 radius run playsound block.gilded_blackstone.place block @a ~-$(r) ~-1 ~
$execute if score #r radius = #6 radius run playsound block.gilded_blackstone.place block @a ~ ~-1 ~$(r)
$execute if score #r radius = #6 radius run playsound block.gilded_blackstone.place block @a ~ ~-1 ~-$(r)
$execute if score #r radius = #4 radius run playsound block.gilded_blackstone.place block @a ~$(r) ~-1 ~-$(r)
$execute if score #r radius = #4 radius run playsound block.gilded_blackstone.place block @a ~-$(r) ~-1 ~-$(r)
$execute if score #r radius = #4 radius run playsound block.gilded_blackstone.place block @a ~-$(r) ~-1 ~$(r)
$execute if score #r radius = #4 radius run playsound block.gilded_blackstone.place block @a ~$(r) ~-1 ~$(r)
#玄武岩
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~$(r) ~ ~
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~-$(r) ~ ~
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~ ~ ~$(r)
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~ ~ ~-$(r)
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~$(r) ~ ~-$(r)
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~-$(r) ~ ~-$(r)
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~-$(r) ~ ~$(r)
$execute if score #r radius = #17 radius run playsound block.block.basalt.place block @a ~$(r) ~ ~$(r)
#火焰-
$execute if score #r radius = #18 radius run playsound entity.blaze.shoot block @a ~$(r) ~ ~-$(r) 3
$execute if score #r radius = #19 radius run playsound entity.blaze.shoot block @a ~-$(r) ~ ~-$(r) 3
$execute if score #r radius = #20 radius run playsound entity.blaze.shoot block @a ~-$(r) ~ ~$(r) 3
$execute if score #r radius = #21 radius run playsound entity.blaze.shoot block @a ~$(r) ~ ~$(r) 3


