# Called every tick.
# Ticks this entity.
#declare function jjk:technique/red/entity/tick

# Display red sphere particles.
function jjk:technique/red/entity/sphere_particles
execute positioned ^ ^ ^1 run function jjk:technique/red/entity/sphere_particles
execute positioned ^ ^ ^2 run function jjk:technique/red/entity/sphere_particles
execute positioned ^ ^ ^3 run function jjk:technique/red/entity/sphere_particles

# Subtick 40 times.
scoreboard players set i jjk 40
function jjk:technique/red/entity/subtick