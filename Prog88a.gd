extends Control



func _on_calc_pressed():
	var Length = int($LineEdit.text)
	var Width = int($LineEdit2.text)
	var Area = Length * Width
	var Perim = 2 * Length + 2 * Width
	$Area.text = "Area" + str(Area)
	$Perim.text = "Perimeter" + str(Perim)
	# Operators: + - * /    ** pow
	#str - string (text)
	# int - interger (whole number)
	# float - floating- point number (w/ decimal)

func _on_clear_pressed():
	$LineEdit.text = ""
	$LineEdit2.text = ""
	$Area.text = ""
	$Perim.text = ""


func _on_exit_pressed():
	get_tree().quit()
