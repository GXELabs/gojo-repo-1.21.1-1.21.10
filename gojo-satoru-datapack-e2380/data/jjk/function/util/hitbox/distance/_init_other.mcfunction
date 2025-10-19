#initialize the needed values for this entity.
#declare function jjk:util/hitbox/distance/_init_other

scoreboard players set constant jjk 10
function jjk:util/hitbox/get_width
scoreboard players operation width2 jjk = hitbox jjk
scoreboard players operation width2 jjk *= constant jjk
function jjk:util/hitbox/get_height
scoreboard players operation height2 jjk = hitbox jjk
scoreboard players operation height2 jjk *= constant jjk

execute store result score x2 jjk run data get entity @s Pos[0] 1000
execute store result score y2 jjk run data get entity @s Pos[1] 1000
execute store result score z2 jjk run data get entity @s Pos[2] 1000