execute at @s as @e[tag=illusion] if score @s POA_ID = @p[distance=0] POA_ID run tag @s add pair


execute as @a[tag=loki,limit=1,sort=nearest] at @s run summon item ~ ~1 ~ {Item:{id:stone_button,Count:1b},PickupDelay:0,Invulnerable:1}

execute as @a[tag=loki,limit=1,sort=nearest] at @s run data modify entity @e[type=item,limit=1,sort=nearest] Item set from entity @e[tag=pair,tag=sion,sort=nearest,limit=1,tag=illutemp] HandItems[0]

execute as @a[tag=loki,limit=1,sort=nearest] at @s run summon item ~ ~1 ~ {Item:{id:oak_button,Count:1b},PickupDelay:0,Invulnerable:1}

execute as @a[tag=loki,limit=1,sort=nearest] at @s run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_button",Count:1b}}] Item set from entity @e[tag=pair,tag=sion,sort=nearest,limit=1,tag=illutemp] HandItems[1]

execute as @a[tag=loki,limit=1,sort=nearest] at @s run function app:get/asgard/equip_hornedhelmet

execute as @a[tag=loki,limit=1,sort=nearest] at @s run kill @e[tag=pair,tag=illusion,limit=2,sort=nearest,tag=illutemp]

effect clear @a[tag=loki,limit=1,sort=nearest] invisibility

execute as @a[tag=loki,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:stone_button",Count:1b}}]

execute as @a[tag=loki,limit=1,sort=nearest] at @s positioned ~ ~1 ~ run kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:oak_button",Count:1b}}]

tag @s remove loki