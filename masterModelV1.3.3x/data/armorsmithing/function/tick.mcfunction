#监守套 黑暗效果
effect give @a[predicate=armorsmithing:wearing_warder_echo] minecraft:darkness 3 0 true
effect give @a[predicate=armorsmithing:wearing_warder_echo] minecraft:unluck infinite 4 true 

#锁链 饥饿_生命恢复
#不潜行时赋予效果
execute as @a[predicate=armorsmithing:wearing_rib_bone] at @s run function armorsmithing:rib_bone_timer2
execute as @a[scores={rib_bone_timer2=59}] run effect give @s minecraft:regeneration 3 0 true
#潜行时赋予效果
execute as @a[predicate=armorsmithing:wearing_rib_bone,predicate=armorsmithing:is_sneaking] at @s run function armorsmithing:rib_bone_timer
execute as @a[scores={rib_bone_timer=1}] run effect give @s minecraft:regeneration 1 2 true
effect give @a[predicate=armorsmithing:wearing_rib_bone,predicate=armorsmithing:is_sneaking] minecraft:hunger 1 64 true
# 不潜行时清除高等级效果
execute as @a[predicate=armorsmithing:wearing_rib_bone,predicate=!armorsmithing:is_sneaking] at @s run function armorsmithing:clear_hunger

#龟壳 潮涌能量
effect give @a[predicate=armorsmithing:wearing_coast_heart] minecraft:conduit_power 13 0 true 

#镶铆套 额外的急迫
effect give @a[predicate=armorsmithing:wearing_bolt_copper] minecraft:haste 3 0 true

#眼眸头盔 黑暗_发光
effect give @a[predicate=armorsmithing:wearing_eye_eye,predicate=armorsmithing:is_sneaking] minecraft:darkness 2 0 true
execute as @a[predicate=armorsmithing:wearing_eye_eye,predicate=armorsmithing:is_sneaking] at @s run function armorsmithing:apply_glowing
execute as @a[predicate=armorsmithing:wearing_eye_eye,predicate=armorsmithing:is_sneaking,scores={sound_player_timer=1}] at @s run playsound entity.lightning_bolt.thunder weather @a ~ ~ ~ 4
execute as @a[predicate=!armorsmithing:is_sneaking] at @s run scoreboard players set @s glowing_timer 0

#  发光玩家显示 位置暴露
execute as @a[predicate=armorsmithing:is_glowing] at @s run title @s actionbar {"text":"⚠ 你正在发光暴露位置！","color":"red","bold":true}

#沉重套 抗性提升
effect give @a[predicate=armorsmithing:wearing_flow_heavy] resistance 3 1 true

#龙套 生命提升
effect give @a[predicate=armorsmithing:wearing_spire_dragon] health_boost 3 0 true

#雇主 村庄英雄
effect give @a[predicate=armorsmithing:wearing_host_boost] hero_of_the_village 3 0 true