# Called while the player is charging Purple.
#define function jjk:technique/purple/animation/play

# Calculate how far Blue and Red should be = 1 - chargeTime/maxCharge.
scoreboard players operation chargePercent jjk = @s chargeTime
scoreboard players set constant jjk 1000
scoreboard players operation chargePercent jjk *= constant jjk
scoreboard players operation chargePercent jjk /= maxCharge chargeTime
scoreboard players set purpleDelta jjk 1000
scoreboard players operation purpleDelta jjk -= chargePercent jjk
execute store result storage jjk animation.purpleDelta double 0.001 run scoreboard players get purpleDelta jjk

# Run the function to actually display the particles.
function jjk:technique/purple/animation/_play with storage jjk animation