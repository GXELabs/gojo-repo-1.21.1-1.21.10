# Triggers when the world is loaded.
#declare function jjk:event/load

# Declaring objectives and score holders.
#declare objective chargeTime A scoreboard for keeping tracking of charged cursed energy.
scoreboard objectives add chargeTime dummy "Red Charge Time"

#declare objective charging A flag for indicating whether a player is charging cursed energy.
scoreboard objectives add charging dummy "Charging Technique"

#declare objective age A scoreboard for keeping track of how long an entity has lived.
scoreboard objectives add age dummy "Age"

#declare objective lifetime A scoreboard that keeps track of how long an entity should live.
scoreboard objectives add lifetime dummy "Lifetime"

#declare objective lifetime A scoreboard that records the initial speed of an entity within Infinity.
scoreboard objectives add initialSpeed dummy "Initial Speed"

#declare objective jjk A general-purpose scoreboard for this datapack.
scoreboard objectives add jjk dummy "JJK Scoreboard"

#declare objective arrowShot A scoreboard that triggers every time a player shoots an arrow.
scoreboard objectives add arrowShot minecraft.used:minecraft.bow "Arrow Shot"

#declare objective rightClick A scoreboard that triggers every time a player right clicks with a warped fungus on a stick.
scoreboard objectives add rightClick minecraft.used:minecraft.warped_fungus_on_a_stick "Right Click"

#declare objective dx A scoreboard to help keep track of motion.
scoreboard objectives add dx dummy

#declare objective dy A scoreboard to help keep track of motion.
scoreboard objectives add dy dummy

#declare objective dz A scoreboard to help keep track of motion.
scoreboard objectives add dz dummy

#declare objective dist A scoreboard to help keep track of the distance an entity is from an Infinity user.
scoreboard objectives add dist dummy

#declare objective damageDealt A scoreboard to keep track of damage.
scoreboard objectives add damageDealt minecraft.custom:minecraft.damage_dealt

# Other initializations.
#declare storage jjk A general-purpose storage for this datapack.
data modify storage jjk bar set value {text:"||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||"}

#declare storage math "A storage for storing pre-computed functions"
data modify storage math functions.log_2 set value [0.0, 1.0, 1.585, 2.0, 2.322, 2.585, 2.807, 3.0, 3.17, 3.322, 3.459, 3.585, 3.7, 3.807, 3.907, 4.0, 4.087, 4.17, 4.248, 4.322, 4.392, 4.459, 4.524, 4.585, 4.644, 4.7, 4.755, 4.807, 4.858, 4.907, 4.954, 5.0, 5.044, 5.087, 5.129, 5.17, 5.209, 5.248, 5.285, 5.322, 5.358, 5.392, 5.426, 5.459, 5.492, 5.524, 5.555, 5.585, 5.615, 5.644, 5.672, 5.7, 5.728, 5.755, 5.781, 5.807, 5.833, 5.858, 5.883, 5.907, 5.931, 5.954, 5.977, 6.0, 6.022, 6.044, 6.066, 6.087, 6.109, 6.129, 6.15, 6.17, 6.19, 6.209, 6.229, 6.248, 6.267, 6.285, 6.304, 6.322, 6.34, 6.358, 6.375, 6.392, 6.409, 6.426, 6.443, 6.459, 6.476, 6.492, 6.508, 6.524, 6.539, 6.555, 6.57, 6.585, 6.6, 6.615, 6.629, 6.644, 6.658, 6.672, 6.687, 6.7, 6.714, 6.728, 6.741, 6.755, 6.768, 6.781, 6.794, 6.807, 6.82, 6.833, 6.845, 6.858, 6.87, 6.883, 6.895, 6.907, 6.919, 6.931, 6.943, 6.954, 6.966, 6.977, 6.989, 7.0, 7.011, 7.022, 7.033, 7.044, 7.055, 7.066, 7.077, 7.087, 7.098, 7.109, 7.119, 7.129, 7.14, 7.15, 7.16, 7.17, 7.18, 7.19, 7.2, 7.209, 7.219, 7.229, 7.238, 7.248, 7.257, 7.267, 7.276, 7.285, 7.295, 7.304, 7.313, 7.322, 7.331, 7.34, 7.349, 7.358, 7.366, 7.375, 7.384, 7.392, 7.401, 7.409, 7.418, 7.426, 7.435, 7.443, 7.451, 7.459, 7.468, 7.476, 7.484, 7.492, 7.5, 7.508, 7.516, 7.524, 7.531, 7.539, 7.547, 7.555, 7.562, 7.57, 7.577, 7.585, 7.592, 7.6, 7.607, 7.615, 7.622, 7.629, 7.637, 7.644, 7.651, 7.658, 7.665, 7.672, 7.679, 7.687, 7.693, 7.7, 7.707, 7.714, 7.721, 7.728, 7.735, 7.741, 7.748, 7.755, 7.762, 7.768, 7.775, 7.781, 7.788, 7.794, 7.801, 7.807, 7.814, 7.82, 7.827, 7.833, 7.839, 7.845, 7.852, 7.858, 7.864, 7.87, 7.877, 7.883, 7.889, 7.895, 7.901, 7.907, 7.913, 7.919, 7.925, 7.931, 7.937, 7.943, 7.948, 7.954, 7.96, 7.966, 7.972, 7.977, 7.983, 7.989, 7.994, 8.0, 8.006, 8.011, 8.017, 8.022, 8.028, 8.033, 8.039, 8.044, 8.05, 8.055, 8.061, 8.066, 8.071, 8.077, 8.082, 8.087, 8.093, 8.098, 8.103, 8.109, 8.114, 8.119, 8.124, 8.129, 8.134, 8.14, 8.145, 8.15, 8.155, 8.16, 8.165, 8.17, 8.175, 8.18, 8.185, 8.19, 8.195, 8.2, 8.205, 8.209, 8.214, 8.219, 8.224, 8.229, 8.234, 8.238, 8.243, 8.248, 8.253, 8.257, 8.262, 8.267, 8.271, 8.276, 8.281, 8.285, 8.29, 8.295, 8.299, 8.304, 8.308, 8.313, 8.317, 8.322, 8.326, 8.331, 8.335, 8.34, 8.344, 8.349, 8.353, 8.358, 8.362, 8.366, 8.371, 8.375, 8.379, 8.384, 8.388, 8.392, 8.397, 8.401, 8.405, 8.409, 8.414, 8.418, 8.422, 8.426, 8.43, 8.435, 8.439, 8.443, 8.447, 8.451, 8.455, 8.459, 8.464, 8.468, 8.472, 8.476, 8.48, 8.484, 8.488, 8.492, 8.496, 8.5, 8.504, 8.508, 8.512, 8.516, 8.52, 8.524, 8.527, 8.531, 8.535, 8.539, 8.543, 8.547, 8.551, 8.555, 8.558, 8.562, 8.566, 8.57, 8.574, 8.577, 8.581, 8.585, 8.589, 8.592, 8.596, 8.6, 8.604, 8.607, 8.611, 8.615, 8.618, 8.622, 8.626, 8.629, 8.633, 8.637, 8.64, 8.644, 8.647, 8.651, 8.655, 8.658, 8.662, 8.665, 8.669, 8.672, 8.676, 8.679, 8.683, 8.687, 8.69, 8.693, 8.697, 8.7, 8.704, 8.707, 8.711, 8.714, 8.718, 8.721, 8.725, 8.728, 8.731, 8.735, 8.738, 8.741, 8.745, 8.748, 8.752, 8.755, 8.758, 8.762, 8.765, 8.768, 8.771, 8.775, 8.778, 8.781, 8.785, 8.788, 8.791, 8.794, 8.798, 8.801, 8.804, 8.807, 8.811, 8.814, 8.817, 8.82, 8.823, 8.827, 8.83, 8.833, 8.836, 8.839, 8.842, 8.845, 8.849, 8.852, 8.855, 8.858, 8.861, 8.864, 8.867, 8.87, 8.873, 8.877, 8.88, 8.883, 8.886, 8.889, 8.892, 8.895, 8.898, 8.901, 8.904, 8.907, 8.91, 8.913, 8.916, 8.919, 8.922, 8.925, 8.928, 8.931, 8.934, 8.937, 8.94, 8.943, 8.945, 8.948, 8.951, 8.954, 8.957, 8.96, 8.963, 8.966, 8.969, 8.972, 8.974, 8.977, 8.98, 8.983, 8.986, 8.989, 8.992, 8.994, 8.997, 9.0]
#declare team infinity A team used so entities cannot attack a player using infinity.
team add infinity "Infinity"
team modify infinity friendlyFire false

#declare team owner A team used group owners and owned entities together.
team add owner

gamerule maxCommandChainLength 1000000
