# Causes this entity to be repelled from the origin.
#> execute as <entity_to_be_repelled> at <repulsion_origin>
#declare function jjk:util/repel/_self

# Get normal vector away from repulsion origin.
function jjk:util/normal_vector

# Flip normal vector and scale by 20%.
scoreboard players set constant jjk -5
scoreboard players operation dx jjk /= constant jjk
scoreboard players operation dy jjk /= constant jjk
scoreboard players operation dz jjk /= constant jjk

# Add the x component.
execute store result score temp jjk run data get entity @s Motion[0] 1000
scoreboard players operation dx jjk += temp jjk
execute store result entity @s Motion[0] double 0.001 run scoreboard players get dx jjk

# Add the y component.
execute store result score temp jjk run data get entity @s Motion[1] 1000
scoreboard players operation dy jjk += temp jjk
execute store result entity @s Motion[1] double 0.001 run scoreboard players get dy jjk

# Add the z component.
execute store result score temp jjk run data get entity @s Motion[2] 1000
scoreboard players operation dz jjk += temp jjk
execute store result entity @s Motion[2] double 0.001 run scoreboard players get dz jjk