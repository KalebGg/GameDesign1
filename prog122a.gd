extends Control



func _on_btn_calc_pressed():
	var num1 = 1-50
	$ItemList.add_item(num1)
	var squared = num1 
func _on_btn_clear_pressed():
	$ItemListnumber.clear()
func _on_btn_exit_pressed():
	$get_tree.quit
