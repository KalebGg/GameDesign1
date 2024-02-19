extends Control



func _on_calc_pressed():
	var Length = int($LineEdit.text)
	var Width = int($LineEdit2.text)
	var Area = Length * Width
	var Perim = 2 * Length + 2 * Width
	$Area.text = "Area" + str(Area)
	$Perim.text = "Perimeter" + str(Perim)


func _on_button_2_pressed():
	$LineEdit.clear()
	$LineEdit2.clear()
	$Area.clear()
	$Perim.clear()

func _on_exit_pressed():
	$get_tree.quit
