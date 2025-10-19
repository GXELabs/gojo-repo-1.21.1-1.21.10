# Runs when technique is initially used.
#declare function jjk:technique/purple/entity/init

# Set owner.
data modify entity @s data.owner set from storage jjk technique.owner

# Find owner.
function jjk:util/find_owner with entity @s data

# Calculate power as one fourth the time the user charged cursed energy for.
execute store result entity @s data.power int .25 run scoreboard players get @a[team=owner,limit=1] chargeTime

# Calculate lifetime as 16 times power.
execute store result score @s lifetime run data get entity @s data.power 16

# Calculate damage as twenty times the power, or 5 times the charge time.
execute store result entity @s data.damage int 20 run data get entity @s data.power

# Store how many particles to show = 4*power^2.
execute store result score particleCount jjk run data get entity @s data.power
scoreboard players operation particleCount jjk *= particleCount jjk
scoreboard players set constant jjk 4
scoreboard players operation particleSpeed jjk *= constant jjk
execute store result entity @s data.particleCount int 1 run scoreboard players get particleCount jjk

# Store particle speed = power / 64.
execute store result score particleSpeed jjk run data get entity @s data.power 1000
scoreboard players set constant jjk 64
scoreboard players operation particleSpeed jjk /= constant jjk
execute store result entity @s data.particleSpeed float 0.001 run scoreboard players get particleSpeed jjk

# Initialize lastRadius to 0.
data modify entity @s data.lastRadius set value 0

# Match rotation to player.
tp @s ~ ~ ~ ~ ~

# Entity is now initialized.
tag @s remove uninitialized