# Displays particles from within Infinite Void's barrier.
#> float teleport_duration: The delta x of the particle.
#declare function jjk:technique/infinite_void/barrier/particle

$particle end_rod ~-.5 ~.5 ~.5 -.2 0 0 $(teleport_duration) 0 force
$particle end_rod ~-.25 ~.5 ~.5 -.2 0 0 $(teleport_duration) 0 force
$particle end_rod ~ ~.5 ~.5 -.2 0 0 $(teleport_duration) 0 force
$particle end_rod ~.25 ~.5 ~.5 -.2 0 0 $(teleport_duration) 0 force
$particle end_rod ~.5 ~.5 ~.5 -.2 0 0 $(teleport_duration) 0 force