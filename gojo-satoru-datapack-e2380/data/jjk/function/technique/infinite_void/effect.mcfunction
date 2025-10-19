# The effects entities affected by Infinite Void gets.
#declare function jjk:technique/infinite_void/effect

data modify entity @s Silent set value 1b
data modify entity @s NoAI set value 1
attribute @s generic.movement_speed base set 0
attribute @s generic.flying_speed base set 0
attribute @s generic.attack_speed base set 0
attribute @s generic.follow_range base set 0