refrigerator={
	"top shelf": ["milk", "cheese"],
	"middle shelf": ["orange juice", "salsa", "yougurt"]  ,
	"bottom shel": ["water", "coca cola", "beer"],
	"drawers": {
		"top": ["oranges", "banannas"],
		"bottom": ["lettuce", "tomato", "onions"]
	}
}

#milk
p refrigerator[:"top shelf"][0]

#banannas
p refrigerator[:"drawers"][:"top"][1]

#list bottom drawer
p refrigerator[:"drawers"][:"bottom"]

#change oranges to carrots
p refrigerator[:"drawers"][:"top"]
refrigerator[:"drawers"][:"top"][0] = "carrots"
p refrigerator[:"drawers"][:"top"]