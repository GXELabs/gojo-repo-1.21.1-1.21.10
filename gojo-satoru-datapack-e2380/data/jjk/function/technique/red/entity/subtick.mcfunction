# Called multiple times per tick.
# Technique moves forward by 0.1 each call.
#declare function jjk:technique/red/entity/subtick

# Detonate if appropriate.
execute store result score detonate jjk run function jjk:technique/red/entity/should_detonate with entity @s data
execute if score detonate jjk matches 1 run function jjk:technique/red/explode/detonate with entity @s data

# Move forward.
tp @s ^ ^ ^.1

# Display red sphere particles.
function jjk:technique/red/entity/sphere_particles

# Decrement i iterator and run function again if i > 0.
scoreboard players remove i jjk 1
execute if score i jjk matches 1.. at @s run function jjk:technique/red/entity/subtick