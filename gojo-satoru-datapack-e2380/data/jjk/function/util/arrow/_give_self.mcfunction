$execute at @a[nbt={UUID:$(player)}] run summon item ~ ~ ~ {Tags:["uninitialized"],Item:{id:"stone",Count:1}}
data modify entity @e[type=item,tag=uninitialized,limit=1] Item set from entity @s item
tag @e[type=item,tag=uninitialized] remove uninitialized
kill @s