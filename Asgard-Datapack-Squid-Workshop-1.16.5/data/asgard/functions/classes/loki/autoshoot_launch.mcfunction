execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s POA_x = @p POA_x
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s POA_y = @p POA_y
execute at @s positioned ~ ~-1.52 ~ run scoreboard players operation @s POA_z = @p POA_z
execute store result entity @s Motion[0] double .00015 run scoreboard players get @s POA_x
execute store result entity @s Motion[1] double .00015 run scoreboard players get @s POA_y
execute store result entity @s Motion[2] double .00015 run scoreboard players get @s POA_z


execute store result entity @s power[0] double .000007896 run scoreboard players get @s POA_x
execute store result entity @s power[1] double .000007896 run scoreboard players get @s POA_y
execute store result entity @s power[2] double .000007896 run scoreboard players get @s POA_z