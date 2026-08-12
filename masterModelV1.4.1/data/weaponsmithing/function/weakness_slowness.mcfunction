#赋予束缚效果 
effect give @a[distance=0.1..4,nbt={HurtTime:10s},limit=1,sort=nearest] mining_fatigue 2 4 false
effect give @e[distance=0.1..4,nbt={HurtTime:10s}] slowness 1 0 false
effect give @e[distance=0.1..4,type=!player,nbt={HurtTime:10s}] weakness 3 0 false

