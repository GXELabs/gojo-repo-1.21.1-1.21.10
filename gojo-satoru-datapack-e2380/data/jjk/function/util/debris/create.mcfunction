# Creates a debris at this position.
#declare function jjk:util/debris/create

# Summon an armor stand to get block id.
summon armor_stand ^ ^ ^ {Motion:[0.0d,0.0d,0.0d],Tags:["debris"]}
execute as @e[type=armor_stand,tag=debris] at @s run function jjk:util/debris/_get_block

# Summon the actual debris entity.
function jjk:util/debris/_summon with storage jjk debris

# Display an explosion particle.
particle minecraft:explosion ~ ~ ~ 0 0 0 1 1 force

# Break this block.
setblock ~ ~ ~ air destroy