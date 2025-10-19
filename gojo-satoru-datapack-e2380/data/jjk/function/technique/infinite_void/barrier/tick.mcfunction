# Run every tick.
#declare function jjk:technique/infinte_void/barrier/tick

# Materialize barrier block once age hits 0.
execute as @e[type=block_display,tag=infinite_void_barrier,scores={age=0}] run data modify entity @s block_state.Name set value "black_concrete"

# Randomly select barrier blocks to display particles.
execute as @e[type=block_display,tag=infinite_void_barrier,tag=particle,sort=random,limit=40] at @s run function jjk:technique/infinite_void/barrier/particle with entity @s