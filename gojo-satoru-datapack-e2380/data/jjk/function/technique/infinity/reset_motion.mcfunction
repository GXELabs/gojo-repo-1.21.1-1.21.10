execute store result entity @s Motion[0] double 0.001 run scoreboard players get @s dx
execute store result entity @s Motion[1] double 0.001 run scoreboard players get @s dy
execute store result entity @s Motion[2] double 0.001 run scoreboard players get @s dz
data modify entity @s NoGravity set value 0b

scoreboard players reset @s dx
scoreboard players reset @s dy
scoreboard players reset @s dz

tag @s remove stopped