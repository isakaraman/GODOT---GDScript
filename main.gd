extends Node

var health := 100 #:= means its int

@export var damage=50 #export means publis in inspector

enum Alignments {ALLY, NEUTRAL, ENEMY}

@onready var control = $Control #attach the nodes to a varieables

@export var my_node : Node #you can attach a node from inspector


# Called when the node enters the scene tree for the first time.
func _ready():
	$Label.text="Hello world"
	$Label.modulate=Color.GREEN
	#--------------------------
	#returning numbers to add func
	var result=add(2,5)
	result=add(result,72)
	print(result)
	#--------------------------
	#randf give 0-1 float numbers
	randf_method()
	#-----------------------------
	#randi_range is for your choosen numbers
	randi_range_method()
	#-------------------------------
	#array 
	array()
	#-----------------------------
	#LOOPS
	loops()
	#----------------------------
	#DICTINARIES
	#dictinarys()
	#-----------------------------
	#ENUM 
	enum_method()
	#----------------------------
	#MATCH
	match_method()
		
func _input(event):
	
	if event.is_action_pressed("my_action"):
		#Changing the color of label	
		$Label.modulate=Color.RED
		#--------------------------
		#if statements example
		health-=20
		print(health)
		if health<=0:
			health=0
			print("YOU DIED!")
		elif health<50:
			print("YOU ARE INJURED!")
		else:
			print("YOU ARE HEALTHY")
		#--------------------------
		#jump method
		jump()
		
		
		
	if event.is_action_released("my_action"):
		#Changing the color of label	
		$Label.modulate=Color.GREEN

func jump():
	print("Jump")

func add(num1: int,num2:int)->int:
	var result=num1+num2
	return result

func randf_method():
	var roll=randf()
	if roll<=0.8:
		print("COMMON ITEM")
	else: 
		print("RARE ITEM FOUND 1!!!!!")
		
func randi_range_method():
	var character_height=randi_range(140,210)
	print("Your height is "+str(character_height)+" cm tall")
		
func array():
	var items:Array[String]=["Potion","Table","Sword"]
	items[1]="Socks"
	items[2]="King's pant"
	
	items.remove_at(1)
	items.append("A duck")

func loops():
	var items:Array[String]=["Potion","Table","Sword"]
	
	for item in items:
		print(item)
		
	for item in items:
		if item.length()>5: #length of words
			print(item)
	
	for n in 8:
		print(n) # prints 8 times
	
	var glass := 0.0
	while glass < 0.5:
		glass += randf_range(0.01,0.2)
		print(glass)
	
	print("YOUR GLASS IS HALF FULL")

func dictinarys():
	var players = {
		"PlayerOne":12,
		"PlayerTwo":22,
	}
	
	players["PlayerOne"]=22
	players["PlayerTwo"]=12
	
	for username in players:
		print(username + ": " + str(players[username]))

func enum_method():
	var unit_alignment=Alignments.ENEMY
	if unit_alignment==Alignments.ALLY:
		print("YOU ARE AN ALLY")
	else:
		print("ARE YOU AN ENEMY OR NEUTRAL?")
	
func match_method():
	var unit_alignment=Alignments.ALLY
	
	match unit_alignment:
		Alignments.ALLY:
			print("HELLO MY ALLY")
		Alignments.NEUTRAL:
			print("WELCOME")
		Alignments.ENEMY:
			print("FEEL MY WRATH!")








		
