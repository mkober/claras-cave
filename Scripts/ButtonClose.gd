extends Button

func _ready():
	self.pressed.connect(self.button_pressed)
	
func button_pressed():
	print("pressed")
	get_parent().visible = false
