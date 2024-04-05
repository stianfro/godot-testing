extends Sprite2D

func _process(delta):
	var speed = 100
	var move = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		move.x += 1
	if Input.is_action_pressed("ui_left"):
		move.x -= 1
	if Input.is_action_pressed("ui_down"):
		move.y += 1
	if Input.is_action_pressed("ui_up"):
		move.y -= 1
	
	move = move.normalized() * speed * delta
	position += move
