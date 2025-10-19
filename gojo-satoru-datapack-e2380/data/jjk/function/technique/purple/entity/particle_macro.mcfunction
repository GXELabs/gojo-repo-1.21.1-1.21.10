# Called every tick by this technique.
# Creates a string to be used as a macro for displaying particles.
#> float particleRadius: The radius of the sphere of particles.
#> float particleDelta: How much the particles vary in position.
#> float particleSize: The size of each individual particle.
#declare function jjk:technique/purple/entity/particle_macro

$data modify entity @s data.particleMacroOuter set value "$(particleSizeOuter)d} ^ ^ ^$(particleRadiusOuter) $(particleDeltaOuter) $(particleDeltaOuter) $(particleDeltaOuter)"
$data modify entity @s data.particleMacroMiddle set value "$(particleSizeMiddle)d} ^ ^ ^$(particleRadiusMiddle) $(particleDeltaMiddle) $(particleDeltaMiddle) $(particleDeltaMiddle)"
$data modify entity @s data.particleMacroInner set value "$(particleSizeInner)d} ^ ^ ^$(particleRadiusInner) $(particleDeltaInner) $(particleDeltaInner) $(particleDeltaInner)"