# This function is called everytime the "cursed_energy/bar/display" function is called.
# It updates the actionbar to display the cursed energy charge
#> midIndex: The end index of the filled part of the bar
#> length: The end index of the entire bar.
#> color: The color the filled part of the bar will be.
#declare function jjk:cursed_energy_bar/update

# Store a substring representing the filled part of the bar.
$data modify storage jjk bar.chargedText set string storage jjk bar.text 0 $(midIndex)

# Store a substring representing the unfilled part of the bar.
$data modify storage jjk bar.unchargedText set string storage jjk bar.text $(midIndex) $(length)

# This command displays the bar on the actionbar.
$title @s actionbar ["[",{"color":"$(color)","nbt": "bar.chargedText", "storage": "jjk"},{"color":"dark_gray","nbt": "bar.unchargedText", "storage": "jjk"},"]"]