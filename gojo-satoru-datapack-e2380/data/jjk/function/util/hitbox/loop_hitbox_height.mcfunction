#Loop for getting the height of this entity's hitbox.
#declare function jjk:util/hitbox/loop_hitbox_height

execute unless entity @s[dx=0,dy=0,dz=0] run return 0

scoreboard players add hitbox jjk 5
scoreboard players remove i jjk 1

execute if score i jjk matches 1.. positioned ~ ~.05 ~ run function jjk:util/hitbox/loop_hitbox_height