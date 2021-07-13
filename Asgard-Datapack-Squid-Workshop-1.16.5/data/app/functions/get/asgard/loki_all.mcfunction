function app:get/asgard/scepter
function app:get/asgard/daggers
function app:get/asgard/equip_hornedhelmet
give @s minecraft:experience_bottle
tag @s add asloki
tellraw @s [{"italic":"true","color":"gray","text":"<Odin the Allfather>:"},{"color":"white","italic":"false","text":" You now possess the power of Loki."}]

effect give @s minecraft:regeneration 10 19 true