# Runs twice every tick.
#declare function jjk:technique/purple/entity/subtick

# Store this technique's age used to calculate destruction radius.
execute store result entity @s data.age int 1 run scoreboard players get @s age

# Calculate the macros needed for this technique.
function jjk:technique/purple/entity/calculate with entity @s data

# Repel entities within a radius.
function jjk:util/repel/radius with entity @s data

# Damage entities within a radius.
function jjk:util/damage with entity @s data

# Loop for [lastRadius, radius], destroying blocks within those radii.
execute store result score i jjk run data get entity @s data.lastRadius
execute store result score i_stop jjk run data get entity @s data.radius
execute store result entity @s data.tempRadius int 1 run scoreboard players get i jjk
execute if score i jjk <= i_stop jjk run function jjk:technique/purple/destroy/loop_destroy with entity @s data

# Generate lightning particles.
execute store result storage jjk lightning.size float 1 run data get entity @s data.radius
data modify storage jjk lightning.dist set from entity @s data.radius
execute store result score i jjk run data get entity @s data.radius
function jjk:technique/purple/lightning/loop_generate_lightning with entity @s data

# Display the particles for this technique.
function jjk:technique/purple/entity/particle_macro with entity @s data
function jjk:technique/purple/entity/sphere_particles with entity @s data

#Move forward
tp @s ^ ^ ^1