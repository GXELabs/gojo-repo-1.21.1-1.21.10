# Summons a lightning particle entity from angles and a distance.
#> float yaw: The yaw rotation.
#> float pitch: The pitch rotation.
#> float distance: The distance from this position.
#declare function jjk:technique/purple/lightning/from_angle

$execute rotated $(yaw) $(pitch) positioned ^ ^ ^$(dist) run function jjk:technique/purple/lightning/create