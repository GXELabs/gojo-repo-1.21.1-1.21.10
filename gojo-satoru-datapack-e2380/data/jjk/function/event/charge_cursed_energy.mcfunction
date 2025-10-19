# This function is called by every player that triggers the "charge_energy" advancement.
# It handles the logic of increasing the player's charged cursed energy.
# The "charge_energy" advancement is triggered every tick a player pulls back on a bow with a "technique" NBT tag.
#declare function jjk:event/charge_cursed_energy

# Revoke the advancement.
advancement revoke @s only jjk:charge_energy
advancement revoke @s only jjk:charge_energy_offhand

# Early return if not Gojo or if player doesn't have cursed energy.
execute unless entity @s[tag=gojo,nbt={Inventory:[{id:"minecraft:arrow",components:{"minecraft:custom_model_data":1,"minecraft:item_name":'"Cursed Energy"'}}]}] run return 0

# Store the technique information from the held item.
data modify storage jjk technique set from entity @s SelectedItem.components.minecraft:custom_data.technique
execute unless data entity @s SelectedItem.components.minecraft:custom_data.technique run data modify storage jjk technique set from entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.technique

# Merge data depending on which technique is being used.
execute if data storage jjk technique{name:"Red"} run data modify storage jjk technique merge value {maxCharge:64, energyColor:"#FF0000"}
execute if data storage jjk technique{name:"Blue"} run data modify storage jjk technique merge value {maxCharge:64, energyColor:"#0000FF"}
execute if data storage jjk technique{name:"Purple"} run data modify storage jjk technique merge value {maxCharge:128, energyColor:"#c000ff"}
execute if data storage jjk technique{name:"Infinite Void"} run data modify storage jjk technique merge value {maxCharge:64, energyColor:"#FFFFFF"}

# Set the bar color to the appropriate color.
data modify storage jjk bar.color set from storage jjk technique.energyColor

# Set the maximum chargeTime to the appropriate number.
execute store result score maxCharge chargeTime run data get storage jjk technique.maxCharge

# Activate techniques that activate at the start of charging cursed energy.
execute if data storage jjk technique{name:"Blue"} unless score @s chargeTime matches 0.. run function jjk:technique/blue/entity/create
execute if data storage jjk technique{name:"Red"} unless score @s chargeTime matches 0.. run function jjk:technique/red/begin
execute if data storage jjk technique{name:"Purple"} unless score @s chargeTime matches 0.. run function jjk:technique/purple/begin
execute if data storage jjk technique{name:"Infinite Void"} unless score @s chargeTime matches 0.. run function jjk:technique/infinite_void/begin

# Run animations for techniques.
execute if data storage jjk technique{name:"Red"} at @s anchored eyes positioned ^ ^ ^ positioned ~ ~-.3 ~ run function jjk:technique/red/animation/play with storage jjk
execute if data storage jjk technique{name:"Purple"} at @s anchored eyes positioned ^ ^ ^ rotated ~ 0 run function jjk:technique/purple/animation/play with storage jjk

# Activate techniques that activate after some time.
execute if data storage jjk technique{name:"Infinite Void"} if score @s chargeTime = maxCharge chargeTime run function jjk:technique/infinite_void/use

# Increment the player's chargeTime by 1, up to the maximum set chargeTime.
execute unless score @s chargeTime >= maxCharge chargeTime run scoreboard players add @s chargeTime 1

# Indicate that the player is charging energy.
scoreboard players set @s charging 1

# Display a bar for the cursed energy charged.
function jjk:cursed_energy_bar/display