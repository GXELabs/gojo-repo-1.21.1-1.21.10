# Triggers when the player shoots an arrow.
#declare function jjk:event/shot_arrow

# Reset this scoreboard.
scoreboard players reset @s arrowShot

# Early return if player is not holding a technique in either hand.
execute unless data entity @s SelectedItem.components.minecraft:custom_data.technique unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.technique unless entity @s[tag=gojo,nbt={Inventory:[{id:"minecraft:arrow",components:{"minecraft:custom_model_data":1,"minecraft:item_name":'"Cursed Energy"'}}]}] run function jjk:give/cursed_energy
execute unless data entity @s SelectedItem.components.minecraft:custom_data.technique unless data entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.technique run return 0

# Store the technique information from the held item.
data modify storage jjk technique set from entity @s SelectedItem.components.minecraft:custom_data.technique
execute unless data entity @s SelectedItem.components.minecraft:custom_data.technique run data modify storage jjk technique set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.technique

# If the player is using a technique, execute the appropriate one and kill the arrow.
execute if data storage jjk technique anchored eyes run kill @e[type=arrow,limit=1,sort=nearest]

# Early return if not Gojo or if player doesn't have cursed energy.
execute unless entity @s[tag=gojo,nbt={Inventory:[{id:"minecraft:arrow",components:{"minecraft:custom_model_data":1,"minecraft:item_name":'"Cursed Energy"'}}]}] run return 0
execute if data storage jjk technique{name:"Red"} run function jjk:technique/red/use
execute if data storage jjk technique{name:"Purple"} run function jjk:technique/purple/use