#闪电苦力怕
execute if score thisthunder thundertime matches 1.. run execute at @s[type=creeper,tag=!thunder_mob] at @s run summon lightning_bolt

execute if score thisthunder thundertime matches 1.. run data merge entity @s {Tags:["strong","thunder_mob"]}
execute if score thisthunder thundertime matches 1.. run effect give @s strength 200 0 false