tag @s add naming
summon armor_stand ~ ~ ~ {Tags:["illusion","illu","ind","unnamed"],Motion:[0.0d,-5.0d,0.0d],Invisible:1b,Pose:{Head:[0.1f,0.0f,0.0f]},CustomName:"\"Illusion\"",CustomNameVisible:0b,NoGravity:0b}
summon armor_stand ~ ~ ~ {Tags:["illusion","sion","ind","unnamed"],Motion:[0.0d,-5.0d,0.0d],Invisible:1b,Pose:{Head:[0.1f,0.0f,0.0f]},CustomName:"\"\"",CustomNameVisible:0b,NoGravity:0b}

execute as @e[tag=unnamed] run function asgard:classes/loki/changename

tp @e[tag=illusion,distance=0] ~ ~ ~ ~ ~

data modify entity @e[tag=illu,distance=0,limit=1] Rotation set from entity @s Rotation
data modify entity @e[tag=sion,distance=0,limit=1] Rotation set from entity @s Rotation

execute as @e[tag=illusion,distance=0] at @s run scoreboard players operation @s POA_ID = @p[distance=0] POA_ID

execute as @e[tag=sion,distance=0,limit=1] at @s run data modify entity @s Pose.Head[0] set from entity @s Rotation[1]
replaceitem entity @e[tag=illu,distance=0,limit=1] armor.head minecraft:warped_button{CustomModelData:6}
replaceitem entity @e[tag=illu,distance=0,limit=1] weapon.mainhand minecraft:warped_button{CustomModelData:5}
replaceitem entity @e[tag=illu,distance=0,limit=1] weapon.offhand minecraft:warped_button{CustomModelData:4}
replaceitem entity @e[tag=sion,distance=0,limit=1] armor.head minecraft:warped_button{CustomModelData:2}
execute unless entity @s[nbt={SelectedItem:{id:"minecraft:experience_bottle"}}] run data modify entity @e[tag=sion,distance=0,limit=1] HandItems[0] set from entity @s SelectedItem
execute as @a[limit=1,sort=nearest] if entity @s[nbt={Inventory:[{Slot:-106b}]}] run data modify entity @e[tag=sion,distance=0,limit=1] HandItems[1] set from entity @s Inventory[-1]

execute positioned ~ ~1.5 ~ run kill @e[type=experience_bottle,distance=..0.1]
tag @s remove naming