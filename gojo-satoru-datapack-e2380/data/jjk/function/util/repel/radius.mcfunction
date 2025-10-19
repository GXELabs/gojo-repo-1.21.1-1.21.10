# Causes an entity within a radius to be repelled from the origin.
#> execute at <repulsion_origin>
#> float radius: Entities within this radius will be affected.
#declare function jjk:util/repel/radius

# Repel each entity within the radius.
$execute as @e[distance=..$(radius)] facing entity @s feet run function jjk:util/repel/_self