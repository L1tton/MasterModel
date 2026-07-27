schedule function weather:weathers/thunder 10s replace
#额外的雷暴
execute if score nexthunder thundertime matches ..0 run weather thunder 6657
execute if score nexthunder thundertime matches ..0 run scoreboard players set thisthunder thundertime 2000
execute if score nexthunder thundertime matches ..0 run playsound entity.lightning_bolt.thunder weather @a ~ ~ ~ 0.1
 
execute store result score random_storage random_storage run random value 1..4
execute if score nexthunder thundertime matches ..0 run execute if score random_storage random_storage matches 1 run say 天有不测风云...
execute if score nexthunder thundertime matches ..0 run execute if score random_storage random_storage matches 2 run say 影子被雷声震碎..
execute if score nexthunder thundertime matches ..0 run execute if score random_storage random_storage matches 3 run say 云里有东西在爬..
execute if score nexthunder thundertime matches ..0 run execute if score random_storage random_storage matches 4 run say 欢迎来到6657直播间

 #开始下一次计时
execute if score nexthunder thundertime matches ..0 run execute store result score nexthunder thundertime run random value 24000..480000

