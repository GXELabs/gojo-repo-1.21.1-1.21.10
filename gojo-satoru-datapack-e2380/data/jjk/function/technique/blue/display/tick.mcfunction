tp @s ~ ~ ~
scoreboard players set @s age -1
scoreboard players operation chargeTime jjk = @a[team=owner,limit=1] chargeTime
scoreboard players set constant jjk 1000
scoreboard players operation chargeTime jjk *= constant jjk
execute store result storage jjk display.size float 0.0005 run scoreboard players get chargeTime jjk
data modify entity @s transformation.scale[0] set from storage jjk display.size
data modify entity @s transformation.scale[1] set from storage jjk display.size
data modify entity @s transformation.scale[2] set from storage jjk display.size