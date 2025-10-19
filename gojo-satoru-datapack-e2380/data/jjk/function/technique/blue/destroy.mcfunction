# Destroys a hollow sphere with the given radius.
#> int power: The radius of the sphere to destroy.
#declare function jjk:technique/blue/destroy

# Two hemispheres form a sphere.
$execute rotated 0 0 run function jjk:fill/hollow_hemisphere/$(power)
$execute rotated 180 0 run function jjk:fill/hollow_hemisphere/$(power)