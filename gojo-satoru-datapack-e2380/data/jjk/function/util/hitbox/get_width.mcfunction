#Gets the width of this entity's hitbox.
#declare function jjk:util/hitbox/get_width

scoreboard players set hitbox jjk 0
scoreboard players set i jjk 100

execute at @s positioned ~.001 ~ ~ run function jjk:util/hitbox/loop_hitbox_width