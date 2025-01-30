extends Node2D

var slash = 1;
var bash = 1;
var grab = 1;
var health = 50;
var Ehealth = 50;
@onready var anim = $sword;
var rng = RandomNumberGenerator.new()

func _ready():
	var my_random_number = rng.randf_range(1, 3)
	$"floating eye".visible = not $"floating eye".visible
	


func _on_slash_pressed():
	var slash = 1;
	
	var my_random_number = rng.randi_range(1, 3)
	if slash != my_random_number && health <= 3:
		get_tree().change_scene_to_file("res://lose.tscn")
	elif slash != my_random_number:
		health -=2;
		$sword.visible = not $sword.visible
	elif slash == my_random_number && Ehealth <=50:
			Ehealth -=5;
			anim.play("sword")
			$"triangle foe".visible = not $"triangle foe".visible
			$"floating eye".visible = not $"floating eye".visible
			
	elif slash == my_random_number:
			Ehealth -=5;
			anim.play("sword")
	$"Player Health".text = str(health)
	$"Enemy Health".text = str(Ehealth)
	
	
	
func _on_bash_pressed():
	var bash = 2;
	var my_random_number = rng.randi_range(1, 3)
	if bash != my_random_number && health <= 3:
		get_tree().change_scene_to_file("res://lose.tscn")
	elif bash != my_random_number:
		health -=2;
	elif bash == my_random_number && Ehealth <=50:
			Ehealth -=5;
			anim.play("sword")
			$"triangle foe".visible = not $"triangle foe".visible
			$"floating eye".visible = not $"floating eye".visible
	elif bash == my_random_number:
			Ehealth -=5;
	$"Player Health".text = str(health)
	$"Enemy Health".text = str(Ehealth)



func _on_grab_pressed():
	var grab = 3;
	var my_random_number = rng.randi_range(1, 3)
	if grab != my_random_number && health <= 3:
		get_tree().change_scene_to_file("res://lose.tscn")
	elif grab != my_random_number:
		health -=2;
	elif grab == my_random_number && Ehealth <=50:
			Ehealth -=5;
			anim.play("sword")
			$"triangle foe".visible = not $"triangle foe".visible
			$"floating eye".visible = not $"floating eye".visible
	elif grab == my_random_number:
			Ehealth -=5;
	$"Player Health".text = str(health)
	$"Enemy Health".text = str(Ehealth)
func _on_button_pressed():
	get_tree().change_scene_to_file("res://Menu.tscn")
