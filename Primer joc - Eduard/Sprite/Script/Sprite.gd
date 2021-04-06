extends Sprite

var velocitat :Vector2 = Vector2(100, 100)

func _ready():
	position = Vector2(500, 300)
	
func _process(delta):
	position += Vector2(1, 0)
	rotation_degrees += 2
