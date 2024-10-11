extends Node2D

@export var BulletDestroyEffect_node: Node 
@export var audio_node: AudioStreamPlayer2D

# Called when the node enters the scene tree for the first time.
func _ready():
	BulletDestroyEffect_node.emitting = true
	audio_node.play()
	await get_tree().create_timer(1.0).timeout
	queue_free()
