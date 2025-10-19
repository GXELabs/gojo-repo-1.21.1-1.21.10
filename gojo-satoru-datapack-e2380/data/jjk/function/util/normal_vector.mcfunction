summon marker ^ ^ ^ {Tags:["origin"]}
execute store result score x jjk run data get entity @e[type=marker,tag=origin,limit=1] Pos[0] 1000
execute store result score y jjk run data get entity @e[type=marker,tag=origin,limit=1] Pos[1] 1000
execute store result score z jjk run data get entity @e[type=marker,tag=origin,limit=1] Pos[2] 1000
kill @e[type=marker,tag=origin]

summon marker ^ ^ ^1 {Tags:["normal_vector"]}
execute store result score dx jjk run data get entity @e[type=marker,tag=normal_vector,limit=1] Pos[0] 1000
execute store result score dy jjk run data get entity @e[type=marker,tag=normal_vector,limit=1] Pos[1] 1000
execute store result score dz jjk run data get entity @e[type=marker,tag=normal_vector,limit=1] Pos[2] 1000
kill @e[type=marker,tag=normal_vector]

scoreboard players operation dx jjk -= x jjk
scoreboard players operation dy jjk -= y jjk
scoreboard players operation dz jjk -= z jjk