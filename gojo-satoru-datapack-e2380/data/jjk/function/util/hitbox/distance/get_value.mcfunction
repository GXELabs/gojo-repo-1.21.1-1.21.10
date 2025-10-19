# Gets the distance between two hitboxes' nearest points.
#> Requires: @e[tag=this] and @e[tag=other]
#declare function jjk:util/hitbox/distance/get_value

execute as @e[tag=this,limit=1] run function jjk:util/hitbox/distance/_init_this
execute as @e[tag=other,limit=1] run function jjk:util/hitbox/distance/_init_other

scoreboard players operation dist jjk = x1 jjk
scoreboard players operation dist jjk -= x2 jjk
scoreboard players set constant jjk -1
execute if score dist jjk matches ..0 run scoreboard players operation dist jjk *= constant jjk
scoreboard players operation dist jjk -= width1 jjk
scoreboard players operation dist jjk -= width2 jjk
execute if score dist jjk matches 1.. if score x1 jjk < x2 jjk run scoreboard players operation x1 jjk += width1 jjk
execute if score dist jjk matches 1.. if score x1 jjk < x2 jjk run scoreboard players operation x2 jjk -= width2 jjk
execute if score dist jjk matches 1.. if score x2 jjk < x1 jjk run scoreboard players operation x2 jjk += width2 jjk
execute if score dist jjk matches 1.. if score x2 jjk < x1 jjk run scoreboard players operation x1 jjk -= width1 jjk
execute if score dist jjk matches ..0 run scoreboard players operation x2 jjk = x1 jjk

scoreboard players operation dist jjk = z1 jjk
scoreboard players operation dist jjk -= z2 jjk
scoreboard players set constant jjk -1
execute if score dist jjk matches ..0 run scoreboard players operation dist jjk *= constant jjk
scoreboard players operation dist jjk -= width1 jjk
scoreboard players operation dist jjk -= width2 jjk
execute if score dist jjk matches 1.. if score z1 jjk < z2 jjk run scoreboard players operation z1 jjk += width1 jjk
execute if score dist jjk matches 1.. if score z1 jjk < z2 jjk run scoreboard players operation z2 jjk -= width2 jjk
execute if score dist jjk matches 1.. if score z2 jjk < z1 jjk run scoreboard players operation z2 jjk += width2 jjk
execute if score dist jjk matches 1.. if score z2 jjk < z1 jjk run scoreboard players operation z1 jjk -= width1 jjk
execute if score dist jjk matches ..0 run scoreboard players operation z2 jjk = z1 jjk

scoreboard players operation dist jjk = y1 jjk
scoreboard players operation dist jjk -= y2 jjk
scoreboard players set constant jjk -1
execute if score dist jjk matches ..0 run scoreboard players operation dist jjk *= constant jjk
execute if score y1 jjk < y2 jjk run scoreboard players operation dist jjk -= height1 jjk
execute if score y2 jjk < y1 jjk run scoreboard players operation dist jjk -= height2 jjk
execute if score dist jjk matches 1.. if score y1 jjk < y2 jjk run scoreboard players operation y1 jjk += height1 jjk
execute if score dist jjk matches 1.. if score y2 jjk < y1 jjk run scoreboard players operation y2 jjk += height2 jjk
execute if score dist jjk matches ..0 run scoreboard players operation y2 jjk = y1 jjk

execute store result storage jjk hitbox.x1 double 0.001 run scoreboard players get x1 jjk
execute store result storage jjk hitbox.y1 double 0.001 run scoreboard players get y1 jjk
execute store result storage jjk hitbox.z1 double 0.001 run scoreboard players get z1 jjk
execute store result storage jjk hitbox.x2 double 0.001 run scoreboard players get x2 jjk
execute store result storage jjk hitbox.y2 double 0.001 run scoreboard players get y2 jjk
execute store result storage jjk hitbox.z2 double 0.001 run scoreboard players get z2 jjk
function jjk:util/hitbox/distance/_calculate with storage jjk hitbox