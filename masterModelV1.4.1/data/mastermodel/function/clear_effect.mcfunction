#清除隐身效果
execute as @e[distance=0.1..4,nbt={HurtTime:10s}] run effect clear @s invisibility
advancement revoke @s only mastermodel:entity_hurt_by_hero