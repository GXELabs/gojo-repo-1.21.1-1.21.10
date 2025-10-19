# Runs when technique is initially used.
# Initializes the entity with the correct data.
#> int[] owner: The UUID of the player that used this technique.
#declare function jjk:technique/red/entity/init

# Set owner.
data modify entity @s data.owner set from storage jjk technique.owner

# Find owner.
function jjk:util/find_owner with entity @s data

# Calculate power as half the time the user charged cursed energy for.
execute store result entity @s data.power int .5 run scoreboard players get @a[team=owner,limit=1] chargeTime

# Calculate damage as ten times the power.
execute store result entity @s data.damage int 10 run data get entity @s data.power

# Set lifetime to 2 times max charge.
scoreboard players operation @s lifetime = maxCharge chargeTime
scoreboard players set constant jjk 2
scoreboard players operation @s lifetime *= constant jjk

# Match rotation to player.
tp @s ~ ~ ~ ~ ~

# Entity is now initialized.
tag @s remove uninitialized