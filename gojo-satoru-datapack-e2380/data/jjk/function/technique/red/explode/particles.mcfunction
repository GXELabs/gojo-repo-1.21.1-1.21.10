# Called by jjk:technique/red/explode/detonate.
# Displays the particles from this explosion.
#> int particleSpeed: How fast/far the particles will go.
#> int particleCount: How many particles to display.
#declare function jjk:technique/red/explode/particles

# Create the particles with the given parameters.
$particle poof ~ ~ ~ 0 0 0 $(particleSpeed) $(particleCount) force
$particle flame ~ ~ ~ 0 0 0 $(particleSpeed) $(particleCount) force