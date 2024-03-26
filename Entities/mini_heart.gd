class_name mini_heart extends Node2D


func _init(): super._init(5)
func _ready(): super._ready()

func interact(player):
	player.pickup_health(value)
	remove()

var value
var flicker_state = false
var flicker_start_time = 10.0
var flicker_interval = 0.1
var current_time = 0.0
var time_to_despawn = 13.0

func _ready(): $AnimatedSprite2D.play()

func remove():
	value = 0
	queue_free()

func interact(player):
	""" to be implemented by child class """
	#player.pickup_item(value)
	remove()


func _process(delta):
	for player in get_tree().get_nodes_in_group("Player"):
		if $Area2D.overlap_body(player):
			interact(player)
	current_time += delta # handle despawn flickering
	if current_time >= flicker_start_time and current_time <= time_to_despawn:
		$AnimatedSprite2D.visable = fmod(current_time, flicker_interval) \
									< (flicker_interval / 2)
	if current_time >= time_to_despawn:
	
		remove()
	pass
