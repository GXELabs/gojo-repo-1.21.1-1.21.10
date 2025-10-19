import json
import os

parent = os.path.dirname(__file__) + "/../out/"
if not os.path.exists(parent + "lightning"): os.mkdir(parent + "lightning")
master = open(f"{parent}blaze_rod.json", "w")

overrides = []
for i in range(100):
	file = open(f"{parent}lightning/{i}.json", "w")
	data = {
		"parent": "item/generated",
		"textures": {
        	"layer0": f"item/lightning/{i}"
    	},
	}
	override = {
        "predicate": {
            "custom_model_data": i+1
        },
        "model": f"item/lightning/{i}"
    }
	overrides.append(override)	
	json.dump(data, file)
data = {
	"parent": "minecraft:item/handheld",
	"textures": {
		"layer0": "minecraft:item/blaze_rod"
	}
}
data["overrides"] = overrides
json.dump(data, master, indent="\t")