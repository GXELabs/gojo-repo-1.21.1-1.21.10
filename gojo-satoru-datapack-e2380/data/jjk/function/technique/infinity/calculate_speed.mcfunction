execute unless score @s initialSpeed matches 0.. store result score @s initialSpeed run attribute @s generic.movement_speed base get 1000
scoreboard players operation speed jjk = @s dist
scoreboard players remove speed jjk 1000
tag @s add slowed
execute if score speed jjk matches 151.. run team leave @s
execute if score speed jjk matches ..150 run team join infinity @s
scoreboard players operation speed jjk *= @s initialSpeed
execute store result storage jjk speed.adjusted float 0.0000005 run scoreboard players get speed jjk
function jjk:technique/infinity/set_speed with storage jjk speed