execute unless score @s dx matches ..2147483647 store result score @s dx run data get entity @s Motion[0] 1000
execute unless score @s dy matches ..2147483647 store result score @s dy run data get entity @s Motion[1] 1000
execute unless score @s dz matches ..2147483647 store result score @s dz run data get entity @s Motion[2] 1000

data modify entity @s NoGravity set value 1b
tag @s add stopped

scoreboard players operation dist jjk = @s dist

scoreboard players remove dist jjk 1000
execute if score dist jjk matches ..0 run scoreboard players set dist jjk 1

scoreboard players operation dx jjk = @s dx
scoreboard players operation dx jjk *= dist jjk

scoreboard players operation dy jjk = @s dy
scoreboard players operation dy jjk *= dist jjk

scoreboard players operation dz jjk = @s dz
scoreboard players operation dz jjk *= dist jjk

data modify entity @s power set value [0d,0d,0d]
execute if entity @s[type=#impact_projectiles,type=!#arrows] run return 1

execute store result entity @s Motion[0] double 0.00000005 run scoreboard players get dx jjk
execute store result entity @s Motion[1] double 0.00000005 run scoreboard players get dy jjk
execute store result entity @s Motion[2] double 0.00000005 run scoreboard players get dz jjk