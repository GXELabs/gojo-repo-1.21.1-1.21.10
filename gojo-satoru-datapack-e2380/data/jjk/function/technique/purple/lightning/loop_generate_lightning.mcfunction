# Called in a loop to generate debris with a radius.
#declare function jjk:technique/purple/lightning/loop_generate_lightning

# Generate random yaw, pitch, and distance to be used to get the position to generate the debris.
execute store result storage jjk lightning.yaw int 1 run random value 0..360
execute store result storage jjk lightning.pitch int 1 run random value 0..360

# Generate the debris at the calculated position.
function jjk:technique/purple/lightning/from_angle with storage jjk lightning

# Decrement i iterator and run function again if i is greater than 0.
scoreboard players remove i jjk 1
execute if score i jjk matches 1.. run function jjk:technique/purple/entity/loop_generate_lightning