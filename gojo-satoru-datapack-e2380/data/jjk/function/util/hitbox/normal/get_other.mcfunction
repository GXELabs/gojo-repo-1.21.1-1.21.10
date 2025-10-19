# Gets the distance between two hitboxes' nearest points.
#> Requires: @e[tag=this]
#declare function jjk:util/hitbox/distance/get_other

tag @s add other
function jjk:util/hitbox/distance/get_value
tag @s remove other