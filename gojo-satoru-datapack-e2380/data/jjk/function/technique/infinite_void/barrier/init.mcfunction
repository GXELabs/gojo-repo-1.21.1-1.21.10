# Run when Infinite Void is first used.
# Initializes a block display of the barrier with the appropriate data.
#declare function jjk:technique/infinite_void/barrier/init

# Set the age to the appropriate value.
execute store result score @s age run data get entity @s interpolation_duration

# Set the lifetime to the appropriate value.
scoreboard players set @s lifetime 200

# The block display is now initialized.
tag @s remove uninitialized