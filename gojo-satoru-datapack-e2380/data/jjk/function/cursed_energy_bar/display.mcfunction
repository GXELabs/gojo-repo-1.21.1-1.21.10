# This function is called everytime the "cursed_energy/charge" function is called.
# It displays a progress bar as an actionbar that indictates how much cursed energy has been charged.
#declare function jjk:cursed_energy_bar/display

# Get the string length of the bar
execute store result score maxBar chargeTime run data get storage jjk bar.text

# Calculate at what index the bar is filled by performing (chargeTime / maxCharge) * maxBar
scoreboard players operation bar chargeTime = @s chargeTime
scoreboard players operation bar chargeTime *= maxBar chargeTime
scoreboard players operation bar chargeTime /= maxCharge chargeTime

# Store the end index of the filled bar and the end index of the entire bar
execute store result storage jjk bar.midIndex int 1 run scoreboard players get bar chargeTime
execute store result storage jjk bar.length int 1 run scoreboard players get maxBar chargeTime

# Update the bar
function jjk:cursed_energy_bar/update with storage jjk bar