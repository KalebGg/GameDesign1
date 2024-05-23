extends Node2D

func _ready():
	$world/CollisionPolygon2D/Polygon2D.polygon = $world/CollisionPolygon2D.polygon
	pass 
