# Called when the player uses the Purple technique.
#declare function jjk:technique/purple/use

function jjk:technique/purple/entity/create
playsound minecraft:purple.use master @a
stopsound @a * minecraft:purple.charge 
playsound minecraft:entity.lightning_bolt.impact player @a
playsound minecraft:entity.lightning_bolt.thunder player @a
playsound minecraft:block.end_portal.spawn player @a