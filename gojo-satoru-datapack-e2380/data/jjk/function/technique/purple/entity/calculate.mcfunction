# Called every tick by this technique.
# Calculates macros such as destruction radius, particle radius, and particle delta.
#> int age: The age of this technique in ticks.
#declare function jjk:technique/purple/entity/calculate

# Store the previous radius of this technique.
data modify entity @s data.lastRadius set from entity @s data.radius

# Calculate effective power = power * log_2(age) / 9.
execute store result score power jjk run data get entity @s data.power
scoreboard players operation effectivePower jjk = power jjk
$execute store result score temp jjk run data get storage math functions.log_2[$(age)] 1000
scoreboard players operation effectivePower jjk *= temp jjk
scoreboard players set constant jjk 9
scoreboard players operation effectivePower jjk /= constant jjk
execute if score effectivePower jjk matches ..999 run scoreboard players set effectivePower jjk 1000

# Store the radius of this technique = int(effectivePower).
execute store result entity @s data.radius int .001 run scoreboard players get effectivePower jjk

# Store the outer and inner radius of this technique.
execute store result entity @s data.particleRadiusOuter float .00075 run scoreboard players get effectivePower jjk
execute store result entity @s data.particleRadiusMiddle float .75 run data get entity @s data.particleRadiusOuter
execute store result entity @s data.particleRadiusInner float .5 run data get entity @s data.particleRadiusOuter

# Store the particle delta of this technique = 0.125 * effectivePower.
execute store result entity @s data.particleDeltaOuter float .000125 run scoreboard players get effectivePower jjk
execute store result entity @s data.particleDeltaMiddle float .75 run data get entity @s data.particleDeltaOuter
execute store result entity @s data.particleDeltaInner float .5 run data get entity @s data.particleDeltaOuter

# Store the particle size of this technique.
execute store result entity @s data.particleSizeOuter float .00025 run scoreboard players get effectivePower jjk
execute if score effectivePower jjk matches ..2000 run data modify entity @s data.particleSizeOuter set value .5f
execute if score effectivePower jjk matches 16000.. run data modify entity @s data.particleSizeOuter set value 4
execute store result entity @s data.particleSizeMiddle float .00021875 run scoreboard players get effectivePower jjk
execute if score effectivePower jjk matches ..1750 run data modify entity @s data.particleSizeMiddle set value .5f
execute if score effectivePower jjk matches 18285.. run data modify entity @s data.particleSizeMiddle set value 4
execute store result entity @s data.particleSizeInner float .0001875 run scoreboard players get effectivePower jjk
execute if score effectivePower jjk matches ..1500 run data modify entity @s data.particleSizeInner set value .5f
execute if score effectivePower jjk matches 21333.. run data modify entity @s data.particleSizeInner set value 4
