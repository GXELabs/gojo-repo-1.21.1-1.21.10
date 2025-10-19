tag @s add this

execute positioned ~ ~.9 ~ as @e[type=ender_dragon,tag=!this,distance=0.001..15] run function jjk:util/hitbox/distance/get_other
$execute positioned ~ ~.9 ~ as @e[type=!item,type=!experience_orb,type=!block_display,tag=!this,distance=0.001..5,nbt=!{Owner:$(UUID)}] unless data entity @s {inGround:1b} run function jjk:util/hitbox/distance/get_other

execute as @e[scores={dist=..3000}] if data entity @s Brain run function jjk:technique/infinity/calculate_speed
execute as @e[scores={dist=..3000}] unless data entity @s Brain run function jjk:technique/infinity/calculate_motion
execute as @e[tag=slowed] unless score @s dist matches ..5000 run function jjk:technique/infinity/reset_speed
execute as @e[tag=stopped] unless score @s dist matches ..3000 run function jjk:technique/infinity/reset_motion
execute as @e[tag=stopped,type=ender_dragon] unless score @s dist matches ..4000 run function jjk:technique/infinity/reset_motion
execute as @e[type=!#arrows,scores={dist=..1499}] run function jjk:technique/infinity/repel {dist:1500}
execute as @e[type=ender_dragon,scores={dist=..3999}] run function jjk:technique/infinity/repel {dist:4000}
team join infinity @s
tag @s remove this

scoreboard players reset @e[scores={dist=..2147483647}] dist