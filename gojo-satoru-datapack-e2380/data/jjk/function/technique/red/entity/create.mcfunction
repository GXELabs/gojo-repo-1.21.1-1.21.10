# Called when technique is initially used.
#declare function jjk:technique/red/entity/create

# Store the user's UUID so that the technique can be linked to the user.
data modify storage jjk technique.owner set from entity @s UUID

# Marker acts as the entity for the technique.
summon marker ^ ^ ^ {Tags:["cursed_technique","red","uninitialized"]}

# Initialize entity with appropriate data.
execute as @e[tag=cursed_technique,tag=red,tag=uninitialized] run function jjk:technique/red/entity/init