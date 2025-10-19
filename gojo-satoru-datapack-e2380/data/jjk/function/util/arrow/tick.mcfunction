execute at @e[type=arrow] run summon minecraft:interaction ~ ~-.25 ~ {Tags:["arrow","uninitialized"],height:.5f,width:.5f,response:1b}
execute as @e[type=interaction,tag=arrow] if data entity @s attack at @s positioned ~ ~.25 ~ as @e[type=arrow,limit=1,sort=nearest] run function jjk:util/arrow/break
execute as @e[type=interaction,tag=arrow] if data entity @s interaction run function jjk:util/arrow/give
execute as @e[type=interaction,tag=arrow] unless score @s age matches 0.. run scoreboard players set @s age 0
execute as @e[type=interaction,tag=arrow] if data entity @s interaction run kill @s
execute as @e[type=interaction,tag=arrow] if data entity @s attack run kill @s
kill @e[type=interaction,tag=arrow,scores={age=2..}]