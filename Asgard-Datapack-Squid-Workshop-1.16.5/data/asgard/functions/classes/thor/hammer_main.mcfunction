#	hammer_flying,		OnGround && Not Already Flying && Right_Click
execute as @a at @s[nbt={OnGround:false,abilities:{flying:0b},SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}},scores={fungiClik_bool=1}] run function asgard:classes/thor/hammer_flyingb
#	hammer_flying,		Pick up hammer
execute as @a at @s[scores={hammerPick_bool=1..}] run function asgard:classes/thor/hammer_flyingb
#	hammer_lightning,	OffGround && Right_Click
execute as @a at @s[nbt={OnGround:true, SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",tag:{CustomModelData:2}}},scores={fungiClik_bool=1,POA_cooldown=..0}] run function asgard:classes/thor/hammer_lightning