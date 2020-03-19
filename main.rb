# Juego BlackJack

puts "****************************"
puts "Partida rapida de BlackJack"
puts "****************************"
puts " "
baraja = Array[20, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,12, 13]
total = 0

puts "¿Quieres retirar una carta?"
retirar = gets.chop

while retirar == "si" do
    random = rand(13)
    total = total + baraja.at(random) - 1
    puts "Has sacado un #{random}, ahora tienes un total de #{total}."
    puts "¿Quieres retirar otra carta?"
    retirar = gets.chop
end

if total <= 21 
    puts "¡Has ganado! :D" 
else 
    puts "¡Has perdido! :("
end
