# Summons the debris entity.
#> string block: The name of the debris' block.
#declare function jjk:util/debris/_summon

$summon falling_block ~ ~ ~ {BlockState:{Name:"$(block)"}}