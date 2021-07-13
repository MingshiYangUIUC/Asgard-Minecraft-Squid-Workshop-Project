tag @s add naming
summon armor_stand ~ ~ ~ {Tags:["illusion","illu","unnamed"],Invisible:1b,Pose:{Head:[0.1f,0.0f,0.0f]},CustomName:"\"Illusion\"",CustomNameVisible:0b,NoGravity:1b}
summon armor_stand ~ ~ ~ {Tags:["illusion","sion","unnamed"],Invisible:1b,Pose:{Head:[0.1f,0.0f,0.0f]},CustomName:"\"\"",CustomNameVisible:0b,NoGravity:1b}

execute as @e[tag=illusion,tag=unnamed] at @s run function asgard:classes/loki/changename

tp @e[tag=illusion,distance=0] ~ ~ ~ ~ ~

execute as @e[tag=illusion,distance=0] at @s run scoreboard players operation @s POA_ID = @p[distance=0] POA_ID

execute as @e[tag=sion,distance=0,limit=1] at @s run data modify entity @s Pose.Head[0] set from entity @a[tag=loki,limit=1,sort=nearest] Rotation[1]
replaceitem entity @e[tag=illu,distance=0,limit=1] armor.head minecraft:warped_button{CustomModelData:6}
replaceitem entity @e[tag=illu,distance=0,limit=1] weapon.mainhand minecraft:warped_button{CustomModelData:5}
replaceitem entity @e[tag=illu,distance=0,limit=1] weapon.offhand minecraft:warped_button{CustomModelData:4}
replaceitem entity @e[tag=sion,distance=0,limit=1] armor.head minecraft:warped_button{CustomModelData:2}
data modify entity @e[tag=sion,distance=0,limit=1] HandItems[0] set from entity @a[tag=loki,limit=1,sort=nearest] SelectedItem
execute as @a[tag=loki,limit=1,sort=nearest] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[tag=sion,distance=0,limit=1] HandItems[1] set from entity @a[tag=loki,limit=1,sort=nearest] Inventory[-1]

tag @s remove naming