function asgard:classes/bifrost/main

execute as @a[tag=asloki,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}},scores={fungiClik_bool=1}] run function app:get/asgard/equip_hornedhelmet
execute as @a[tag=asthor,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:9}}},scores={fungiClik_bool=1}] run function app:get/asgard/equip_thorhelmet

execute as @a[tag=asloki,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:3}}},scores={fungiClik_bool=1}] run replaceitem entity @s weapon.mainhand air
execute as @a[tag=asthor,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:9}}},scores={fungiClik_bool=1}] run replaceitem entity @s weapon.mainhand air

execute as @a[tag=asloki,tag=!loki,scores={shift_bool=1},nbt={OnGround:1b}] at @s run function asgard:classes/loki/set


execute as @a[tag=asloki,tag=loki,scores={POA_cooldown=..0}] at @s run function asgard:classes/loki/kill

execute as @a[tag=asthor,tag=!loki] run function asgard:classes/thor/hammer_main

execute as @a[tag=asloki] run function asgard:classes/loki/scepter_main

execute as @e[tag=proj] at @s unless entity @a[distance=..128] run kill @s
execute as @e[tag=proj,scores={POA_cooldown=2..20}] store result entity @s ExplosionPower int 1 run scoreboard players get @s POA_cooldown

scoreboard players remove @a[scores={POA_cooldown=1..}] POA_cooldown 1
scoreboard players add @e[tag=proj] POA_cooldown 2


#throw illusion
scoreboard players add @e[type=experience_bottle] POA_cooldown 1
execute as @a[tag=asloki] at @s at @e[distance=..20,type=experience_bottle,scores={POA_cooldown=1}] positioned ~ ~-1.5 ~ run function asgard:classes/loki/indepsummon


#villager animal
execute at @a[tag=asloki,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:1}}}] as @e[type=villager,distance=..5,nbt={HurtTime:10s}] run function asgard:classes/loki/turn_vil
execute as @e[tag=deadvil,type=area_effect_cloud] unless entity @s[nbt={Age:15}] at @s run function asgard:classes/loki/turn_particle
execute as @e[tag=deadvil,type=area_effect_cloud,nbt={Age:15}] at @s run function asgard:classes/loki/turn_animal

effect give @a[tag=asloki] resistance 1 2 true
effect give @a[tag=asthor] resistance 1 3 true
