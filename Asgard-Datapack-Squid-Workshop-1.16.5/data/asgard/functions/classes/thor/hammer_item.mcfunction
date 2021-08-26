
#hammer cannot be thrown by Thor
execute if entity @p[distance=..3,tag=asthor] run data merge entity @s {PickupDelay:100000s}

#hammer cannot be picked up by players other than Thor
execute if entity @p[distance=..3,tag=!asthor] run data merge entity @s {PickupDelay:-10000s}

#hammer tp to nearest Thor
execute if entity @a[tag=asthor] at @p[tag=asthor] run tp @s ~ ~ ~ 