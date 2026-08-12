#赋予眩晕效果 缓慢_失明
effect give @a[distance=0.1..4,nbt={HurtTime:10s},limit=1,sort=nearest] blindness 1 0 false
effect give @e[distance=0.1..4,type=!minecraft:player,nbt={HurtTime:10s},limit=1,sort=nearest] slowness 1 0 false

