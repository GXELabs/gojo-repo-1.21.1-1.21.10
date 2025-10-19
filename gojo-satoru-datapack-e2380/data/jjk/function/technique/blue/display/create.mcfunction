summon item_display ~ ~ ~ {Tags:["cursed_technique","blue_aura","uninitialized"],item:{id:"heart_of_the_sea",components:{custom_model_data:1}},billboard:"center",brightness:{sky:15,block:15},interpolation_duration:200}
data modify entity @s data.display set from entity @e[type=item_display,tag=blue_aura,tag=uninitialized,limit=1] UUID
scoreboard players set @e[type=item_display,tag=blue_aura,tag=uninitialized] lifetime 1
tag @e[type=item_display,tag=uninitialized] remove uninitialized