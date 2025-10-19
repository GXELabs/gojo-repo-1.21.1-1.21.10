# Initializes this lightning particle.
#declare function jjk:technique/purple/lightning/init

# Random lightning model.
execute store result entity @s item.components."minecraft:custom_model_data" int 1 run random value 1..100

# Set appropriate scale.
data modify entity @s transformation.scale[0] set from storage jjk lightning.size
data modify entity @s transformation.scale[1] set from storage jjk lightning.size
data modify entity @s transformation.scale[2] set from storage jjk lightning.size

# Lives for half a second.
scoreboard players set @s lifetime 10

# Particle is now initialized.
tag @s remove uninitialized