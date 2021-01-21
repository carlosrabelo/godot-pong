extends KinematicBody2D

export var area_min = 0
export var area_max = 0

var velocidade = 350
var bola

func _ready():
	bola = get_parent().find_node("Bola")

func _physics_process(delta):
	move_and_slide(Vector2(0,pega_direcao_oponente())*velocidade)
	
func pega_direcao_oponente():
	if bola.position.x >= area_min and bola.position.x <= area_max:
		var distancia = bola.position.y - position.y
		if abs( distancia ) > 25:
			if bola.position.y > position.y:
				return 1
			else:
				return -1
		else:
			return 0
	else:
		return 0
	
