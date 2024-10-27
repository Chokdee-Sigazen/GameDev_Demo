extends State
@onready var ninja: Ninja = $"../.."
@onready var walk_state: Node = $"../Walk"
@onready var animation_player: AnimationPlayer = $"../../AnimationPlayer"
@onready var attack_state: Node = $"../Attack"


func enter() -> void:
	ninja.update_animation("idle")
	pass

func exit() -> void:
	pass

func process(delta: float) -> State:
	if ninja.direction != Vector2.ZERO:
		return walk_state
	return null

func physics_process(delta: float) -> State:
	return null

func handle_input(event: InputEvent) -> State:
	if Input.is_action_pressed("attack"):
		return attack_state
	return null
