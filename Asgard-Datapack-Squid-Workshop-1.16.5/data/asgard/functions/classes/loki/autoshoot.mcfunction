scoreboard players set @s POA_cooldown 6
scoreboard players set @s POA_autoshoot 3
execute at @s[scores={POA_autoshoot=3}] positioned ~ ~1.52 ~ run kill @e[type=arrow,distance=..0.5]
execute at @s[scores={POA_autoshoot=3}] run summon area_effect_cloud ^ ^ ^-3 {Invisible:1b,Tags:["v"],Duration:0s}
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] POA_x run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[0] 10000
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] POA_y run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[1] 10000
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run execute store result score @e[tag=v,distance=..0.1,limit=1] POA_z run data get entity @e[tag=v,distance=..0.1,limit=1] Pos[2] 10000
execute at @s[scores={POA_autoshoot=3}] run execute store result score @s POA_x run data get entity @s Pos[0] 10000
execute at @s[scores={POA_autoshoot=3}] run execute store result score @s POA_y run data get entity @s Pos[1] 10000
execute at @s[scores={POA_autoshoot=3}] run execute store result score @s POA_z run data get entity @s Pos[2] 10000
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run scoreboard players operation @s POA_x -= @e[tag=v,distance=..0.1,limit=1] POA_x
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run scoreboard players operation @s POA_y -= @e[tag=v,distance=..0.1,limit=1] POA_y
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run scoreboard players operation @s POA_z -= @e[tag=v,distance=..0.1,limit=1] POA_z
execute at @s[scores={POA_autoshoot=3}] positioned ^ ^ ^-3 run kill @e[tag=v,distance=0]

execute at @s[scores={POA_autoshoot=3}] run summon fireball ~ ~1.52 ~ {Item:{Count:1,id:end_crystal},Fire:-20,ExplosionPower:2,Tags:["proj"],Owner:[I;-3,3,2,1],pickup:1b,damage:1,Motion:[0.0d,0.0d,0.0d],power:[0.0d,0.0d,0.0d],NoGravity:0b}
execute as @a[scores={POA_autoshoot=3}] at @s positioned ~ ~1.52 ~ run data modify entity @e[tag=proj,limit=1,sort=nearest] Owner set from entity @s UUID

execute at @s[scores={POA_autoshoot=3}] positioned ~ ~1.52 ~ as @e[distance=..0.1,tag=proj] run function asgard:classes/loki/autoshoot_launch
scoreboard players set @s POA_autoshoot 0

effect give @s[tag=invulnerable] resistance 1 4 true

playsound minecraft:custom.scepter.shoot player @a ~ ~ ~ 1 1
playsound minecraft:custom.scepter.shoot player @a ~ ~ ~ 1 1
playsound minecraft:custom.scepter.shoot player @a ~ ~ ~ 1 1
playsound minecraft:custom.scepter.shoot player @a ~ ~ ~ 1 1
playsound minecraft:custom.scepter.shoot player @a ~ ~ ~ 1 1