function jjk:util/hitbox/normal/get_other
team join infinity @s

$scoreboard players set m jjk $(dist)
scoreboard players operation m jjk -= @s dist
scoreboard players operation dx jjk *= m jjk
scoreboard players operation dy jjk *= m jjk
scoreboard players operation dz jjk *= m jjk

execute store result entity @s Motion[0] double 0.0000015 run scoreboard players get dx jjk
execute store result entity @s Motion[1] double 0.0000015 run scoreboard players get dy jjk
execute store result entity @s Motion[2] double 0.0000015 run scoreboard players get dz jjk
execute if entity @s[type=#impact_projectiles,type=!#arrows] run data modify entity @s Motion set value [0d,0d,0d]