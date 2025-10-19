# Returns whether Red should explode.
#> int[] owner: The UUID of the player that used this technique.
#declare function jjk:technique/red/entity/should_detonate

# Return 1 if the technique has reached a certain age, hits an entity, or hits a block. Return 0 otherwise.
execute if score @s age > @s lifetime run return 1
$execute if entity @e[type=!marker,dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)}] run return 1
execute unless block ~ ~ ~ #jjk:nonsolid run return 1
return 0