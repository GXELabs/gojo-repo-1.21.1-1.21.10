# Called while player is charging Purple.
# Displays particle animation for this technique.
#define function jjk:technique/purple/animation/_play

# Display Red and Blue while < 90% charged.
$execute unless score chargePercent jjk matches 900.. positioned ^-$(purpleDelta) ^ ^-1 run function jjk:technique/purple/animation/blue_sphere_particles
$execute unless score chargePercent jjk matches 900.. positioned ^$(purpleDelta) ^ ^-1 run function jjk:technique/purple/animation/red_sphere_particles

# Display purple particles when Red and Blue are in contact.
execute if score chargePercent jjk matches 450.. run particle witch ^ ^ ^-1 0 0 0 1 4 force
execute if score chargePercent jjk matches 445..455 run playsound minecraft:block.beacon.activate player @a

# Display a flash when approximately 90% charged.
execute if score chargePercent jjk matches 895..905 positioned ^ ^ ^-1 run function jjk:technique/purple/animation/_flash
execute if score chargePercent jjk matches 895..905 run playsound minecraft:entity.lightning_bolt.impact player @a

# Display Purple when >= 90% charged.
execute if score chargePercent jjk matches 900.. positioned ^ ^ ^-1 run function jjk:technique/purple/animation/purple_sphere_particles