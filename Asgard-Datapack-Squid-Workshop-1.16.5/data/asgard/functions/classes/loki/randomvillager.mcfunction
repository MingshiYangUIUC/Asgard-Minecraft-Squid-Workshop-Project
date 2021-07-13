summon villager ~ ~ ~ {Tags:["newrandom"]}
scoreboard players set POA_C30 POA_var 30
execute as @e[tag=newrandom,distance=0] store result score @s POA_var run data get entity @s UUID[-1]

scoreboard players operation @e[tag=newrandom,limit=1] POA_var %= POA_C30 POA_var

execute as @e[tag=newrandom,limit=1,scores={POA_var=0}] run data merge entity @s {VillagerData:{type:plains,profession:farmer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=1}] run data merge entity @s {VillagerData:{type:plains,profession:armorer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=2}] run data merge entity @s {VillagerData:{type:plains,profession:catographer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=3}] run data merge entity @s {VillagerData:{type:plains,profession:fletcher,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=4}] run data merge entity @s {VillagerData:{type:plains,profession:leatherworker,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=5}] run data merge entity @s {VillagerData:{type:plains,profession:librarian,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=6}] run data merge entity @s {VillagerData:{type:plains,profession:shepherd,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=7}] run data merge entity @s {VillagerData:{type:plains,profession:weaponsmith,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=8}] run data merge entity @s {VillagerData:{type:plains,profession:toolsmith,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=9}] run data merge entity @s {VillagerData:{type:plains,profession:butcher,level:5}}

execute as @e[tag=newrandom,limit=1,scores={POA_var=10}] run data merge entity @s {VillagerData:{type:snow,profession:farmer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=11}] run data merge entity @s {VillagerData:{type:snow,profession:armorer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=12}] run data merge entity @s {VillagerData:{type:snow,profession:catographer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=13}] run data merge entity @s {VillagerData:{type:snow,profession:fletcher,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=14}] run data merge entity @s {VillagerData:{type:snow,profession:leatherworker,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=15}] run data merge entity @s {VillagerData:{type:snow,profession:librarian,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=16}] run data merge entity @s {VillagerData:{type:snow,profession:shepherd,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=17}] run data merge entity @s {VillagerData:{type:snow,profession:weaponsmith,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=18}] run data merge entity @s {VillagerData:{type:snow,profession:toolsmith,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=19}] run data merge entity @s {VillagerData:{type:snow,profession:butcher,level:5}}

execute as @e[tag=newrandom,limit=1,scores={POA_var=20}] run data merge entity @s {VillagerData:{type:desert,profession:farmer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=21}] run data merge entity @s {VillagerData:{type:desert,profession:armorer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=22}] run data merge entity @s {VillagerData:{type:desert,profession:catographer,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=23}] run data merge entity @s {VillagerData:{type:desert,profession:fletcher,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=24}] run data merge entity @s {VillagerData:{type:desert,profession:leatherworker,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=25}] run data merge entity @s {VillagerData:{type:desert,profession:librarian,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=26}] run data merge entity @s {VillagerData:{type:desert,profession:shepherd,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=27}] run data merge entity @s {VillagerData:{type:desert,profession:weaponsmith,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=28}] run data merge entity @s {VillagerData:{type:desert,profession:toolsmith,level:5}}
execute as @e[tag=newrandom,limit=1,scores={POA_var=29}] run data merge entity @s {VillagerData:{type:desert,profession:butcher,level:5}}

tag @e[tag=newrandom] add randvilscene2
tag @e[tag=newrandom,distance=0] remove newrandom