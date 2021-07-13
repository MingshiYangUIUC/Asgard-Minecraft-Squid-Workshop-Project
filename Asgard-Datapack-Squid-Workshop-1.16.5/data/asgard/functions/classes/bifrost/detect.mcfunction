tag @s add bifrostA

execute as @e[tag=tpdetect,nbt={Age:1}] at @s if score @s POA_ID = @a[tag=bifrostA,limit=1] POA_ID run tag @s add bifrostB

execute if entity @s[tag=bifrostA] if entity @e[tag=bifrostB,distance=10..] run function asgard:classes/bifrost/summon
execute if entity @s[tag=bifrostA] if entity @e[tag=bifrostB,distance=10..] as @e[tag=bifrostB,distance=10..] at @s run function asgard:classes/bifrost/summon

tag @s remove bifrostA

tag @e[tag=tpdetect] remove bifrostB