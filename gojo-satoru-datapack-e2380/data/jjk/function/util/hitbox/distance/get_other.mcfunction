# Gets the distance between two hitboxes' nearest points.
#> Requires: @e[tag=this]
#declare function jjk:util/hitbox/distance/get_other

tag @s add other
function jjk:util/hitbox/distance/get_value
scoreboard players operation @s dist = dist jjk
tag @s remove other