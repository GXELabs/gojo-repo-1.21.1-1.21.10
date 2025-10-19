# Run every tick.
#> int[] display: The UUID for this technique's display entity.
#declare function jjk:technique/blue/entity/_tick

# Reset this technique's age.
scoreboard players set @s age -1

# Move towards where this technique's owner is looking.
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1
execute at @a[team=owner,limit=1] anchored eyes positioned ^ ^ ^32 facing entity @s feet positioned as @s run tp @s ^ ^ ^-.1

$execute as @e[type=item_display,tag=blue_aura,nbt={UUID:$(display)}] run function jjk:technique/blue/display/tick