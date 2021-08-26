function princeofasgard:classes/main/clean

scoreboard objectives add POA_x dummy
scoreboard objectives add POA_y dummy
scoreboard objectives add POA_z dummy
scoreboard objectives add POA_dx dummy
scoreboard objectives add POA_dy dummy
scoreboard objectives add POA_dz dummy
scoreboard objectives add POA_autoshoot dummy
scoreboard objectives add POA_cooldown dummy
scoreboard players set @a POA_cooldown 0
scoreboard objectives add POA_ID dummy
scoreboard objectives add POA_var dummy
execute as @a store result score @s POA_ID run data get entity @s UUID[1]
scoreboard players set POA_C5 POA_var 5
scoreboard players set POA_C10 POA_var 10

tellraw @a {"text":"[Server]: Asgard-Datapack from Squid-Workshop Loaded.","italic":true,"color":"gray"}