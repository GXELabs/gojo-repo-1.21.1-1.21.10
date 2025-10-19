# Summons a debris entity from angles and a distance.
#> float yaw: The yaw rotation.
#> float pitch: The pitch rotation.
#> float distance: The distance from this position.
#declare function jjk:util/debris/create_from_angle

$execute rotated $(yaw) $(pitch) positioned ^ ^ ^$(dist) unless block ~ ~ ~ #jjk:nonsolid run function jjk:util/debris/create