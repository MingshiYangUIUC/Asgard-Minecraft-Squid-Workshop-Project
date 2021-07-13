tag @a[tag=asthor] add bifrost
tag @a[tag=asloki] add bifrost

tag @a[tag=!asthor,tag=!asloki] remove bifrost

execute as @a[tag=bifrost] at @s run summon area_effect_cloud ~ ~ ~ {Duration:2s,Tags:["tpdetect"]}
execute as @a[tag=bifrost] at @s run scoreboard players operation @e[distance=..0.1,tag=tpdetect] POA_ID = @s POA_ID

execute as @a[tag=bifrost] at @s run function asgard:classes/bifrost/detect