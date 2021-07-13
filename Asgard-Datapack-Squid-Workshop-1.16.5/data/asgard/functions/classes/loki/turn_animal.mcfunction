
execute store result score @s POA_var run data get entity @s UUID[-1]
scoreboard players operation @s POA_var %= POA_C10 POA_var

execute if score @s POA_var matches 0 run summon bat ~ ~ ~
execute if score @s POA_var matches 1 run summon chicken ~ ~ ~
execute if score @s POA_var matches 2 run summon cow ~ ~ ~
execute if score @s POA_var matches 3 run summon donkey ~ ~ ~
execute if score @s POA_var matches 4 run summon horse ~ ~ ~
execute if score @s POA_var matches 5 run summon mule ~ ~ ~
execute if score @s POA_var matches 6 run summon pig ~ ~ ~
execute if score @s POA_var matches 7 run summon sheep ~ ~ ~
execute if score @s POA_var matches 8 run summon mooshroom ~ ~ ~
execute if score @s POA_var matches 9 run summon squid ~ ~ ~

kill @s