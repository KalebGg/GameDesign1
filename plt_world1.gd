extends Node2D

func _ready():
	$world/CollisionPolygon2D/Polygon2D.polygon = $world/CollisionPolygon2D.polygon
	pass 


func _on_interact_mouse_entered():
	if Input.is_mouse_button_pressed(MOUSE_BUTTON_LEFT):
		$interact.queue_free()


func _on_button_pressed():
	pass # Replace with function body.