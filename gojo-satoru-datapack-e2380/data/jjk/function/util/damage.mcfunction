# Damages entities within a radius.
#> float radius: The radius to affect entities within.
#> float damage: The damage to deal.
#> int[] owner: The UUID of the origin of damage.
#declare function jjk:util/damage

$execute as @e[distance=..$(radius),nbt=!{UUID:$(owner)}] run damage @s $(damage) minecraft:player_attack by @a[nbt={UUID:$(owner)},limit=1]
$execute as @e[dx=0,dy=0,dz=0,nbt=!{UUID:$(owner)}] run damage @s $(damage) minecraft:player_attack by @a[nbt={UUID:$(owner)},limit=1]