tag @s add loki
function asgard:classes/loki/summon
tag @e[tag=illusion,limit=2,sort=nearest] add illutemp
replaceitem entity @a[tag=loki,limit=1,sort=nearest] weapon.mainhand air
replaceitem entity @a[tag=loki,limit=1,sort=nearest] weapon.offhand air
replaceitem entity @a[tag=loki,limit=1,sort=nearest] armor.head air
effect give @a[tag=loki,limit=1,sort=nearest] invisibility 999 0 true
effect give @a[tag=loki,limit=1,sort=nearest] speed 2 2 true
effect give @a[tag=loki,limit=1,sort=nearest] resistance 2 4 true
#schedule function asgard:classes/loki/kill 2s

scoreboard players add @s POA_cooldown 40