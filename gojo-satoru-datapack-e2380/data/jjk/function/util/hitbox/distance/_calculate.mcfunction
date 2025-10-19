#> double x1, y1, z1, x2, y2, z2
#declare function jjk:util/hitbox/distance/_calculate

$execute positioned $(x1) $(y1) $(z1) facing $(x2) $(y2) $(z2) run function jjk:util/normal_vector

scoreboard players operation x jjk = x2 jjk
scoreboard players operation x jjk -= x1 jjk
scoreboard players operation y jjk = y2 jjk
scoreboard players operation y jjk -= y1 jjk
scoreboard players operation z jjk = z2 jjk
scoreboard players operation z jjk -= z1 jjk

scoreboard players set constant jjk 1000
scoreboard players operation x jjk *= constant jjk
scoreboard players operation y jjk *= constant jjk
scoreboard players operation z jjk *= constant jjk
scoreboard players operation x jjk /= dx jjk
scoreboard players operation y jjk /= dy jjk
scoreboard players operation z jjk /= dz jjk
scoreboard players operation dist jjk = x jjk
execute if score y jjk > dist jjk run scoreboard players operation dist jjk = y jjk
execute if score z jjk > dist jjk run scoreboard players operation dist jjk = z jjk