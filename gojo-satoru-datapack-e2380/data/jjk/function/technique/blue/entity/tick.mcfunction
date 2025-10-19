# Runs every tick.
#declare function jjk:technique/blue/entity/tick

# Find this technique's owner.
function jjk:util/find_owner with entity @s data

# Play voiceline when technique is halfway charged.
scoreboard players set halfCharge chargeTime 64
scoreboard players set constant jjk 2
scoreboard players operation halfCharge chargeTime /= constant jjk
execute if score @a[team=owner,limit=1] chargeTime = halfCharge chargeTime at @a[team=owner,limit=1] run playsound blue.use master @a

# Power is 1/4 of the time this technique's owner has been charging energy.
execute store result entity @s data.power int .25 run scoreboard players get @a[team=owner,limit=1] chargeTime
execute if score @a[team=owner,limit=1] chargeTime matches ..3 run data modify entity @s data.power set value 1

# If the owner is no longer charging cursed energy, this technique is no longer charging.
execute unless score @a[team=owner,limit=1] charging matches 1 run tag @s remove charging

# Run tick function for if this technique is still charging.
execute if entity @s[tag=charging] run function jjk:technique/blue/entity/_tick with entity @s data

# Store the radius of this technique.
data modify entity @s data.radius set from entity @s data.power

# Loop power^2 times, generating debris each iteration within the radius.
execute store result score i jjk run data get entity @s data.power
scoreboard players operation i jjk *= i jjk
function jjk:util/debris/loop_generate_debris with entity @s data

# Destroy blocks within the radius.
function jjk:technique/blue/destroy with entity @s data

# Radius will always be 32 for entities.
data modify entity @s data.radius set value 32

# Attract and damage entities within a radius.
function jjk:util/attract/radius with entity @s data
function jjk:util/damage with entity @s data

# Play continuous sound.
playsound block.beacon.activate player @a ~ ~ ~ 10