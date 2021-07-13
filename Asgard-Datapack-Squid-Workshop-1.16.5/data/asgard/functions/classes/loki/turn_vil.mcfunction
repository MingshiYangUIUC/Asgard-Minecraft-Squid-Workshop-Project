tag @s add deadv

effect give @s invisibility 99 0 true
replaceitem entity @s armor.head air


data merge entity @s {Motion:[0.0d,0.0d,0.0d]}

execute at @s run summon area_effect_cloud ~ ~ ~ {Duration:30,Tags:["deadvil"]}


kill @s