scoreboard players add i jjk 1
execute if score i jjk matches ..1000 positioned ^ ^ ^.1 if block ~ ~ ~ #jjk:nonsolid run function jjk:technique/teleport/loop_raycast
execute unless score i jjk matches -1 if block ~ ~1.0 ~ #jjk:nonsolid if block ~ ~1.8 ~ #jjk:nonsolid run tp @s ~ ~ ~
execute if block ~ ~1.0 ~ #jjk:nonsolid if block ~ ~1.8 ~ #jjk:nonsolid run scoreboard players set i jjk -1