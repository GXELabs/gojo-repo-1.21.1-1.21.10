# Triggers every tick.
#declare function jjk:event/tick

# Check for events such as right clicking and shooting an arrow.
execute as @a[scores={rightClick=1..}] at @s run function jjk:event/right_click
execute as @a[scores={arrowShot=1..}] at @s anchored eyes positioned ^ ^ ^1 run function jjk:event/shot_arrow

# Tick infinity.
execute as @a[tag=gojo] at @s run function jjk:technique/infinity/tick

# Tick entities.
execute as @e[type=marker,tag=purple] at @s run function jjk:technique/purple/entity/tick
execute as @e[type=marker,tag=blue] at @s run function jjk:technique/blue/entity/tick
execute as @e[type=marker,tag=red] at @s run function jjk:technique/red/entity/tick
function jjk:util/arrow/tick
function jjk:technique/infinite_void/barrier/tick

# Tick animations.
function jjk:technique/red/animation/tick

# Cancel techniques that are no longer charging.
execute as @a[tag=gojo,scores={charging=0,chargeTime=0..}] run function jjk:technique/infinite_void/cancel

# For every player, reset the chargeTime if they are not currently charging.
execute as @a[tag=gojo] if score @s charging matches 0 run scoreboard players reset @s chargeTime
execute as @a[tag=gojo] run scoreboard players set @s charging 0

# Increment the ages of techniques.
scoreboard players add @e[type=marker,tag=cursed_technique] age 1
scoreboard players add @e[type=item_display,tag=cursed_technique] age 1
scoreboard players add @e[type=block_display,tag=cursed_technique] age 1
scoreboard players add @e[type=interaction,tag=arrow] age 1

# Kill techniques that have surpassed their lifetime
execute as @e[type=marker,tag=cursed_technique] if score @s age >= @s lifetime run kill @s
execute as @e[type=item_display,tag=cursed_technique] if score @s age >= @s lifetime run kill @s
execute as @e[type=block_display,tag=cursed_technique] if score @s age >= @s lifetime run kill @s

# Reset owner team.
team leave @e[team=owner]

# Check for attempts at crafting six eyes.
function jjk:give/tick

execute as @a[tag=!welcomed] run function jjk:event/welcome

scoreboard players reset hitbox jjk
scoreboard players reset dist jjk
scoreboard players reset speed jjk
scoreboard players reset dx jjk
scoreboard players reset dy jjk
scoreboard players reset dz jjk
scoreboard players reset x jjk
scoreboard players reset y jjk
scoreboard players reset z jjk
scoreboard players reset constant jjk
scoreboard players reset temp jjk
scoreboard players reset i jjk
scoreboard players reset chargeTime jjk
scoreboard players reset effectivePower jjk
scoreboard players reset purpleDelta jjk
scoreboard players reset chargePercent jjk
scoreboard players reset particleSpeed jjk
scoreboard players reset particleCount jjk
scoreboard players reset power jjk
scoreboard players reset detonate jjk
scoreboard players reset i_stop jjk
scoreboard players reset x1
scoreboard players reset y1
scoreboard players reset z1
scoreboard players reset x2
scoreboard players reset y2
scoreboard players reset z2
scoreboard players reset height1
scoreboard players reset height2
scoreboard players reset width1
scoreboard players reset width2