# Runs every tick.
#declare function jjk:technique/purple/entity/tick

function jjk:technique/purple/entity/subtick
scoreboard players add @s age 1
execute at @s run function jjk:technique/purple/entity/subtick