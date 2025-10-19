# Causes an entity within a radius to be attracted to the origin.
#> execute at <attraction_origin>
#> float radius: Entities within this radius will be affected.
#declare function jjk:util/attract/radius

# Attract each entity within the radius.
$execute as @e[distance=..$(radius),tag=!cursed_technique,] facing entity @s feet run function jjk:util/attract/_self