schedule function mob_modify:new_spawning_loop 3t replace

##一级怪
execute as @e[type=zombie,tag=!strong,sort=random] at @s run function mob_modify:spawning/zombie
execute as @e[type=zombie_villager,tag=!strong,sort=random] at @s run function mob_modify:spawning/zombie_villager
execute as @e[type=skeleton,tag=!strong,sort=random] at @s run function mob_modify:spawning/skeleton
execute as @e[type=creeper,tag=!strong,sort=random] at @s run function mob_modify:spawning/creeper
execute as @e[type=spider,tag=!strong,sort=random] at @s run function mob_modify:spawning/spider
execute as @e[type=cave_spider,tag=!strong,sort=random] at @s run function mob_modify:spawning/cave_spider
execute as @e[type=witch,tag=!strong,sort=random] at @s run function mob_modify:spawning/witch
execute as @e[type=silverfish,tag=!strong,sort=random] at @s run function mob_modify:spawning/silverfish

##二级怪
execute as @e[type=husk,tag=!strong,sort=random] at @s run function mob_modify:spawning/husk
execute as @e[type=drowned,tag=!strong,sort=random] at @s run function mob_modify:spawning/drowned
execute as @e[type=stray,tag=!strong,sort=random] at @s run function mob_modify:spawning/stray
execute as @e[type=parched,tag=!strong,sort=random] at @s run function mob_modify:spawning/parched
execute as @e[type=bogged,tag=!strong,sort=random] at @s run function mob_modify:spawning/bogged
execute as @e[type=pillager,tag=!strong,sort=random] at @s run function mob_modify:spawning/pillager
execute as @e[type=phantom,tag=!strong,sort=random] at @s run function mob_modify:spawning/phantom
execute as @e[type=vex,tag=!strong,sort=random] at @s run function mob_modify:spawning/vex
execute as @e[type=slime,tag=!strong,sort=random] at @s run function mob_modify:spawning/slime

##三级怪
execute as @e[type=wither_skeleton,tag=!strong,sort=random] at @s run function mob_modify:spawning/wither_skeleton
execute as @e[type=piglin,tag=!strong,sort=random] at @s run function mob_modify:spawning/piglin
execute as @e[type=zombified_piglin,tag=!strong,sort=random] at @s run function mob_modify:spawning/zombified_piglin
execute as @e[type=piglin,tag=!strong,sort=random] at @s run function mob_modify:spawning/piglin
execute as @e[type=enderman,tag=!strong,sort=random] at @s run function mob_modify:spawning/enderman
execute as @e[type=endermite,tag=!strong,sort=random] at @s run function mob_modify:spawning/endermite
execute as @e[type=blaze,tag=!strong,sort=random] at @s run function mob_modify:spawning/blaze
execute as @e[type=hoglin,tag=!strong,sort=random] at @s run function mob_modify:spawning/hoglin
execute as @e[type=ravager,tag=!strong,sort=random] at @s run function mob_modify:spawning/ravager
execute as @e[type=creaking,tag=!strong,sort=random] at @s run function mob_modify:spawning/creaking
execute as @e[type=magma_cube,tag=!strong,sort=random] at @s run function mob_modify:spawning/magma_cube
execute as @e[type=iron_golem,tag=!strong,sort=random] at @s run function mob_modify:spawning/iron_golem
execute as @e[type=evoker,tag=!strong,sort=random] at @s run function mob_modify:spawning/evoker
execute as @e[type=guardian,tag=!strong,sort=random] at @s run function mob_modify:spawning/guardian
execute as @e[type=shulker,tag=!strong,sort=random] at @s run function mob_modify:spawning/shulker
execute as @e[type=ghast,tag=!strong,sort=random] at @s run function mob_modify:spawning/ghast


##四级怪
execute as @e[type=piglin_brute,tag=!strong,sort=random] at @s run function mob_modify:spawning/piglin_brute
execute as @e[type=vindicator,tag=!strong,sort=random] at @s run function mob_modify:spawning/vindicator
    #boss
execute as @e[type=warden,tag=!strong,sort=random] at @s run function mob_modify:spawning/warden
execute as @e[type=elder_guardian,tag=!strong,sort=random] at @s run function mob_modify:spawning/elder_guardian
execute as @e[type=wither,tag=!strong,sort=random] at @s run function mob_modify:spawning/wither
execute as @e[type=ender_dragon,tag=!strong,sort=random] at @s run function mob_modify:spawning/ender_dragon


##动物
execute as @e[type=wolf,tag=!strong,sort=random] at @s run function mob_modify:spawning/wolf
execute as @e[type=panda,tag=!strong,sort=random] at @s run function mob_modify:spawning/panda
execute as @e[type=polar_bear,tag=!strong,sort=random] at @s run function mob_modify:spawning/polar_bear
execute as @e[type=bee,tag=!strong,sort=random] at @s run function mob_modify:spawning/bee
execute as @e[type=dolphin,tag=!strong,sort=random] at @s run function mob_modify:spawning/dolphin
execute as @e[type=llama,tag=!strong,sort=random] at @s run function mob_modify:spawning/llama
execute as @e[type=trader_llama,tag=!strong,sort=random] at @s run function mob_modify:spawning/llama
execute as @e[type=happy_ghast,tag=!strong,sort=random] at @s run function mob_modify:spawning/happy_ghast

execute as @e[type=#mob_modify:thunder_mob,tag=!thunder,sort=random] at @s run function weather:weathers/thunder_mob
