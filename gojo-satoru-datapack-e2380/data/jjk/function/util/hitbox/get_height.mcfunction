#Gets the height of this entity's hitbox.
#declare function jjk:util/hitbox/get_height

scoreboard players set hitbox jjk 0
scoreboard players set i jjk 250

execute at @s positioned ~ ~.001 ~ run function jjk:util/hitbox/loop_hitbox_height