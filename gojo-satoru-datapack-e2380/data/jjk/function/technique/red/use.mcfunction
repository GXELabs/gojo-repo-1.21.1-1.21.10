#>
# Called when the player uses the Red technique.
#declare function jjk:technique/red/use

function jjk:technique/red/entity/create
playsound minecraft:red.use master @a
playsound minecraft:entity.ender_dragon.shoot master @a
stopsound @a * minecraft:red.charge 