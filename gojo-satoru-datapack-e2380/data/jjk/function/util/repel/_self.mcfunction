# Causes this entity to be repelled from the origin.
#> execute as <entity_to_be_repelled> at <repulsion_origin>
#declare function jjk:util/repel/_self

# Get normal vector away from repulsion origin.
function jjk:util/normal_vector

# Add the x component.
execute store result score temp jjk run data get entity @s Motion[0] 1000
scoreboard players operation dx jjk += temp jjk
execute store result entity @s Motion[0] double 0.001 run scoreboard players get dx jjk

# Add the z component.
execute store result score temp jjk run data get entity @s Motion[2] 1000
scoreboard players operation dz jjk += temp jjk
execute store result entity @s Motion[2] double 0.001 run scoreboard players get dz jjk

data modify entity @s Motion[1] set value 1.0d