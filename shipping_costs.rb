require './lib/parcels'

def main_menu
  puts "Press 'v' to get the volume of your package."
  puts "Press 'c' to get the cost to ship your package."
  puts "Press 'x' to exit."
  main_choice = gets.chomp
  if main_choice == 'v'
    show_volume
  elsif main_choice == 'c'
    show_cost_of_shipping
  elsif main_choice == 'x'
    puts "Good-bye!"
  else
    puts "Sorry, that isn't a valid option."
  end
end

def show_volume
  puts "Enter length"
    length = gets.chomp.to_i
  puts "Enter width"
    width = gets.chomp.to_i
  puts "Enter height"
    height = gets.chomp.to_i
    weight = 1
    x = Parcel.new(length, width, height, weight)
    puts x.volume
  main_menu
end

def show_cost_of_shipping
  puts "Enter length"
    length = gets.chomp.to_i
  puts "Enter width"
    width = gets.chomp.to_i
  puts "Enter height"
    height = gets.chomp.to_i
  puts "Enter Weight"
    weight = gets.chomp.to_i
  x = Parcel.new(length, width, height, weight)
  x.volume
  puts x.cost_to_ship
main_menu
end
main_menu


