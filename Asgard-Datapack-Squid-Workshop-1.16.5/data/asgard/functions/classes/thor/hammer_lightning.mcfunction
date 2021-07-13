tag @s add thorlightning
execute positioned ^ ^ ^ at @e[tag=!thorlightning,distance=0.1..20,type=!minecraft:area_effect_cloud,type=!experience_orb,type=!end_crystal] run summon minecraft:lightning_bolt ~ ~ ~
execute positioned ^ ^ ^ if entity @e[tag=illusion,distance=0.1..20] run scoreboard players set @a[tag=loki] POA_cooldown 0
execute positioned ^ ^ ^ as @e[tag=ind,distance=0.1..20] run kill @s
tag @s remove thorlightning
scoreboard players set @s POA_cooldown 10