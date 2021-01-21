extends KinematicBody2D

var velocidade = 320
var direcao = Vector2.ZERO

func _ready():
	randomize()
	direcao.x = [-1,1][randi()%2]
	direcao.y = [-1,1][randi()%2]

func _physics_process(delta):
	var colisao = move_and_collide(direcao * velocidade * delta)
	if colisao:
		direcao = direcao.bounce(colisao.normal)
