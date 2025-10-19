scoreboard players add animationFrame jjk 5
scoreboard players set constant jjk 360
scoreboard players operation animationFrame jjk %= constant jjk
execute store result storage jjk animationFrame int 1 run scoreboard players get animationFrame jjk