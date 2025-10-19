#initialize the needed values for this entity.
#declare function jjk:util/hitbox/distance/_init_this

scoreboard players set constant jjk 10
function jjk:util/hitbox/get_width
scoreboard players operation width1 jjk = hitbox jjk
scoreboard players operation width1 jjk *= constant jjk
function jjk:util/hitbox/get_height
scoreboard players operation height1 jjk = hitbox jjk
scoreboard players operation height1 jjk *= constant jjk

execute store result score x1 jjk run data get entity @s Pos[0] 1000
execute store result score y1 jjk run data get entity @s Pos[1] 1000
execute store result score z1 jjk run data get entity @s Pos[2] 1000