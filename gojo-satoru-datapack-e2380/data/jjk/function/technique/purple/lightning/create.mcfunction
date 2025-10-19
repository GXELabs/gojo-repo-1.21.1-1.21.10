# Summons a lightning particle at this location.
#declare function jjk:technique/purple/lightning/create

# Summon and initialize the item display acting as the lightning particle.
summon item_display ~ ~ ~ {Tags:["lightning","uninitialized","cursed_technique"],view_range:8192f,item:{id:"blaze_rod",components:{custom_model_data:1}},billboard:"center",brightness:{sky:15,block:15}}
execute as @e[type=item_display,tag=lightning,tag=uninitialized] run function jjk:technique/purple/lightning/init