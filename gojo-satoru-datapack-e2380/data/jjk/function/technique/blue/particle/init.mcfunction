scoreboard players set @s lifetime 40
execute at @s facing entity @e[type=item_display,tag=blue,limit=1,sort=nearest] feet run tp @s ~ ~ ~ ~ ~
tag @s remove uninitialized