# Called initially when creating debris.
# Gets the name of the block to create debris from and stores it.
#declare function jjk:util/debris/_get_block

# Use loot to store the item dropped when mining this block in the armor stand's helmet slot.
loot replace entity @s armor.head mine ~ ~ ~ diamond_pickaxe[enchantments={silk_touch:1}]

# Store the item id in storage.
data modify storage jjk debris.block set from entity @s ArmorItems[3].id

# Armor stand is no longer needed.
kill @s