# Called in a loop to generate debris with a radius.
#> float radius: The within to generate debris.
#declare function jjk:util/debris/loop_generate_debris

# Generate random yaw, pitch, and distance to be used to get the position to generate the debris.
execute store result storage jjk debris.yaw int 1 run random value 0..360
execute store result storage jjk debris.pitch int 1 run random value 0..360
$execute store result storage jjk debris.dist int 1 run random value 0..$(radius)

# Generate the debris at the calculated position.
function jjk:util/debris/create_from_angle with storage jjk debris

# Decrement i iterator and run function again if i is greater than 0.
scoreboard players remove i jjk 1
$execute if score i jjk matches 1.. run function jjk:util/debris/loop_generate_debris {radius: $(radius)}