#Runs when technique is initially used
#declare function jjk:technique/blue/entity/create

# Store the user's UUID so that the technique can be linked to the user.
data modify storage jjk technique.owner set from entity @s UUID

# Marker acts as the entity for the technique.
execute anchored eyes run summon marker ^ ^ ^ {Tags:["cursed_technique","blue","uninitialized"]}

# Initialize entity with appropriate data.
execute as @e[tag=cursed_technique,tag=blue,tag=uninitialized] run function jjk:technique/blue/entity/init

# Play voice line.
playsound minecraft:blue.charge master @a
