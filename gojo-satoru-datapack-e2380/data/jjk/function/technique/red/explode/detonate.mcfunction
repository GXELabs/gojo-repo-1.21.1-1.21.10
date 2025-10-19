# Runs if the technique has reached a certain age, hits an entity, or hits a block.
# Handles the logic for the effects of the technique when it explodes.
#> int power: The strength of this technique.
#declare function jjk:technique/red/explode/detonate

# Store the radius of this technique.
data modify entity @s data.radius set from entity @s data.power

# Store how much power this technique had.
execute store result score power jjk run data get entity @s data.power

# Store particleCount = 2 * power^2.
scoreboard players operation particleCount jjk = power jjk
scoreboard players operation particleCount jjk *= power jjk
execute store result entity @s data.particleCount int 2 run scoreboard players get particleCount jjk

# Store particleSpeed = power / 16.
scoreboard players operation particleSpeed jjk = power jjk
scoreboard players set constant jjk 1000
scoreboard players operation particleSpeed jjk *= constant jjk
scoreboard players set constant jjk 16
scoreboard players operation particleSpeed jjk /= constant jjk
execute store result entity @s data.particleSpeed float 0.001 run scoreboard players get particleSpeed jjk

# Loop power^2 times, generating debris each iteration.
execute store result score i jjk run data get entity @s data.power
scoreboard players operation i jjk *= i jjk
function jjk:util/debris/loop_generate_debris with entity @s data

# Repel entities within a radius.
function jjk:util/repel/radius with entity @s data

# Damage entities within a radius.
function jjk:util/damage with entity @s data

# Destroy blocks within radius.
$function jjk:fill/solid_sphere/$(power)

# Display flash particle.
particle flash ~ ~ ~ 1 1 1 1 10 force

# Show explosion particles.
function jjk:technique/red/explode/particles with entity @s data

# Play explosion sound.
playsound entity.generic.explode master @a ~ ~ ~ 256

# Entity is no longer needed and can be discarded.
kill @s