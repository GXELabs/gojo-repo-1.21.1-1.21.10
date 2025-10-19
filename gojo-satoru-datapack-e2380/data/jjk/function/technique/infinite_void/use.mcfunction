# Called when Infinite Void is used.
#declare function jjk:technique/infinite_void/use

# Create the barrier of Infinite Void.
function jjk:technique/infinite_void/barrier/create

# Initialize barrier entities.
execute as @e[type=block_display,tag=infinite_void_barrier,tag=uninitialized] at @s run function jjk:technique/infinite_void/barrier/init

# Affect entities besides the user.
tag @s add infinite_void_user
execute as @e[distance=..16,tag=!infinite_void_user] run function jjk:technique/infinite_void/effect
tag @s add infinite_void_user

# Play sound effect.
playsound minecraft:entity.wither.spawn master @a[distance=..16] ~ ~ ~ 100

scoreboard players add @s chargeTime 1