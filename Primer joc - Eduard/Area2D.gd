extends Area2D

func _on_Aparcament_area_entered(area: Area2D)->void:
	self.visible = true

func _on_Aparcament_area_exited(area: Area2D)->void:
	self.visible = false
