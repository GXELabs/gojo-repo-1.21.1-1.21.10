# Loop that iterates from [lastRadius, radius].
# Destroys blocks between those radii.
#> int tempRadius: The radius to destroy blocks in.
#declare function jjk:technique/purple/destroy/loop_destroy

# Destroy blocks in a hemispherical shell of the given radius.
$function jjk:fill/hollow_hemisphere/$(tempRadius)

# Increment i iterator, update tempRadius, and call this function again if i <= i_stop.
scoreboard players add i jjk 1
execute store result entity @s data.tempRadius int 1 run scoreboard players get i jjk
execute if score i jjk <= i_stop jjk run function jjk:technique/purple/destroy/loop_destroy with entity @s data