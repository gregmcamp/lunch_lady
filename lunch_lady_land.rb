@main_dish_menu = {'Horse meat' => 0.50, 'Hot Pockets' => 2.50, 'Hoagies and Grinders' => 2.00, 'Sloppy Joes' => 1.00}

@side_menu = {'Mashed Potatoes' => 1.00,  'Mac & Cheese' => 0.75, 'Navy Beans' => 0.85, 'Tots' => 1.00}

@dessert_menu = {'Chocolate Pudding' => 0.50, 'PB Bars' => 0.75,  'Stick of Butter' => 2.00}


def main_dish_choice
	puts "   "
	puts "Welcome to Lunch Lady Land!!!"
	puts "   "
	puts "What would you like to eat today?"
	puts "   "
	puts "=== Menu ==="
	puts "1) Horse meat $0.50" 
	puts "2) Hot Pockets $2.50" 
	puts "3) Hoagies and Grinders $2.00" 
	puts "4) Sloppy Joes $1.00"
	main_dish_choice_var = gets.to_i
	if main_dish_choice_var == 1
		@main_dish_key = @main_dish_menu.key(0.50)	
		@main_dish_value = @main_dish_menu["Horse meat"]
	elsif main_dish_choice_var == 2
		@main_dish_key = @main_dish_menu.key(2.50)
		@main_dish_value = @main_dish_menu["Hot Pockets"]
	elsif main_dish_choice_var == 3
		@main_dish_key = @main_dish_menu.key(2.00)
		@main_dish_value = @main_dish_menu["Hoagies and Grinders"]
	elsif main_dish_choice_var == 4
		puts "Sloppy Joes, Sloppy, Sloppy Joes!"
		puts "I know how you kids likes 'em extra sloppy!"
		@main_dish_key = @main_dish_menu.key(1.00)
		@main_dish_value = @main_dish_menu["Sloppy Joes"]			
	else
		puts "Please make a valid selection."
		main_dish_choice
	end
	side_dish_choice
end


def side_dish_choice
	puts "   "
	puts "And what would you like for a side dish?"
	puts "   "
	puts "=== Side Dishes ==="
	puts "1) Mashed Potatoes $1.00" 
	puts "2) Mac & Cheese $0.75" 
	puts "3) Navy Beans $0.85" 
	puts "4) Tots $1.00"
	side_dish_choice_var = gets.to_i
	if side_dish_choice_var == 1
		@side_dish_key = @side_menu.key(1.00)
		@side_dish_value = @side_menu["Mashed Potatoes"]
	elsif side_dish_choice_var == 2
		@side_dish_key = @side_menu.key(0.75)
		@side_dish_value = @side_menu["Mac & Cheese"]
	elsif side_dish_choice_var == 3
		@side_dish_key = @side_menu.key(0.85)
		@side_dish_value = @side_menu["Navy Beans"]
	elsif side_dish_choice_var == 4
		@side_dish_key = @side_menu.key(1.00)
		@side_dish_value = @side_menu["Tots"]
	else		
		puts"Please pick a side dish from the menu."
		side_dish_choice	
	end	
	dessert_choice
end

def dessert_choice
	puts "   "
	puts "Now it is time for everyones favorite DESSERT \nbut you can't have any pudding if you don't eat your meat!"
	puts "   "
	puts "=== Desserts ==="
	puts "1) Chocolate Pudding $0.50" 
	puts "2) PB Bars $0.75" 
	puts "3) Stick of Butter $2.00" 
	dessert_choice_var = gets.to_i
	if dessert_choice_var == 1
		@dessert_key = @dessert_menu.key(0.50)
		@dessert_value = @dessert_menu["Chocolate Pudding"]
	elsif dessert_choice_var == 2
		@dessert_key = @dessert_menu.key(0.75)
		@dessert_value = @dessert_menu["PB Bars"]
	elsif dessert_choice_var == 3
		@dessert_key = @dessert_menu.key(2.00)
		@dessert_value = @dessert_menu["Stick of Butter"]
	else puts "Don't you want a dessert? Pick one of the three options above, thanks!"
		dessert_choice
	end
	order_total
end

def cost
	@cost_var = @main_dish_value + @side_dish_value + @dessert_value
end

def order_total
  puts "Alright, it looks like your full order today is..."
  puts "#{@main_dish_key} with a delicious side of #{@side_dish_key} and of course for dessert our famous #{@dessert_key}"
  puts "That will bring your total to"
  puts "$#{cost}"
end

main_dish_choice