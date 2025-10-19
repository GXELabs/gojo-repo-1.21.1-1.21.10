# Triggers when the play right clicks with a warped fungus on a stick.
#declare function jjk:event/right_click

# Reset the scoreboard.
scoreboard players reset @s rightClick

# Early return if not Gojo or if player doesn't have cursed energy.
execute unless entity @s[tag=gojo,nbt={Inventory:[{id:"minecraft:arrow",components:{"minecraft:custom_model_data":1,"minecraft:item_name":'"Cursed Energy"'}}]}] run return 0

# If the player is using a technique, execute the appropriate one.
execute if data entity @s SelectedItem.components.minecraft:custom_data.technique{name:"Teleportation"} anchored eyes run function jjk:technique/teleport/init
execute unless data entity @s SelectedItem.components.minecraft:custom_data.technique{name:"Teleportation"} if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.technique{name:"Teleportation"} anchored eyes run function jjk:technique/teleport/init
execute if data entity @s SelectedItem.components.minecraft:custom_data.technique{name:"Levitation"} anchored eyes run function jjk:technique/levitate/use
execute unless data entity @s SelectedItem.components.minecraft:custom_data.technique{name:"Levitation"} if data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.technique{name:"Levitation"} anchored eyes run function jjk:technique/levitate/use