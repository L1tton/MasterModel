#重锤 失明
execute as @a[tag=attacker,predicate=weaponsmithing:holding_blindness_weapon] at @s run function weaponsmithing:blindness_slowness
#下界之星 凋零
execute as @a[tag=attacker,predicate=weaponsmithing:holding_wither_weapon] at @s run effect give @e[distance=0.1..4,type=!minecraft:player,nbt={HurtTime:10s},limit=1,sort=nearest] wither 3 1 false
#束缚
execute as @a[tag=attacker,predicate=weaponsmithing:holding_weakness_weapon] at @s run function weaponsmithing:weakness_slowness
#贪婪
execute as @a[tag=killer,predicate=weaponsmithing:holding_regeneration_weapon] at @s run function weaponsmithing:clear_regeneration
execute as @a[predicate=weaponsmithing:holding_regeneration_weapon] at @s run effect give @s nausea 5 0 true

advancement revoke @a until weaponsmithing:player_attack
advancement revoke @a until weaponsmithing:player_kill
tag @a[tag=killer] remove killer
tag @a[tag=attacker] remove attacker