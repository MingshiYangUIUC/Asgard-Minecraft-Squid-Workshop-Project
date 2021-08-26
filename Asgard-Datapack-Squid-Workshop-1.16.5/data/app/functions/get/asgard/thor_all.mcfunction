function app:get/asgard/equip_thorhelmet
function app:get/asgard/mjolnir
function app:get/asgard/cape
tag @s add asthor
tellraw @s [{"italic":"true","color":"gray","text":"<Odin the Allfather>:"},{"color":"white","italic":"false","text":" You now possess the power of Thor."}]
effect give @s minecraft:regeneration 10 19 true