extends KinematicBody2D

export(Array, NodePath) var waypoints
export(int) var starting_waypoint = 0

var waypoint_position 
var waypoint_index setget set_waypoint_index


# Called when the node enters the scene tree for the first time.
func _ready():
	self.waypoint_index = starting_waypoint
	

func _physics_process(delta):
	print(waypoint_position)

func set_waypoint_index(value):
	waypoint_index = value
	
	waypoint_position = get_node(waypoints[value]).position
