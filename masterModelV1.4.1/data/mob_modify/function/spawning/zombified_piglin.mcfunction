data merge entity @s {Health:20f,IsBaby:0b,Tags:["strong"],attributes:[{id:"armor",base:4},{id:"minecraft:attack_damage",base:10},{id:"minecraft:max_health",base:30},{id:"minecraft:movement_speed",base:0.3},{id:"follow_range",base:32}]}

item replace entity @s weapon.mainhand with golden_sword[weapon={disable_blocking_for_seconds:1},custom_data={"mastermodel:mob_weapon":{}},lore=["怪物的"]]
item modify entity @s weapon.mainhand mob_modify:enchant