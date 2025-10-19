# Finds this entity's owner from their owner NBT tag.
#> int[] owner: The UUID of this entity's owner.
#declare function jjk:util/find_owner

$team join owner @a[nbt={UUID:$(owner)}]