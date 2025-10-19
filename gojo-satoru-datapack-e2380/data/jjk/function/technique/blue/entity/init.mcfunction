# Runs when technique is initially used
#> int[] owner: The UUID of the player that used this technique.
#declare function jjk:technique/blue/entity/init

# Set owner.
data modify entity @s data.owner set from storage jjk technique.owner

# Set damage to 1.
data modify entity @s data.damage set value 1

# Initialize power to 1.
data modify entity @s data.power set value 1

# Initialize lifetime to 1.
scoreboard players set @s lifetime 1

# Technique is charging initially.
tag @s add charging

# Entity is now initialized.
tag @s remove uninitialized

function jjk:technique/blue/display/create