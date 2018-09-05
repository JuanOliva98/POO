my_array = [9, 5, 1, 2, 3, 4, 0, -1]

p my_array.size  # --> 8
p my_array.first # --> 9
p my_array.last # --> -1
p my_array[1] # --> 5
p my_array[9] # --> Nil
p my_array[2..4] # --> [1, 2, 3]
p my_array[2...4] # --> [1, 2]
p my_array[2, 4] # --> desde la posicion 2,  imprime 4 elementos
p my_array[-3] # --> 4
p my_array.first(4) # --> imprime los cuatro primeros
p my_array.drop(4) # --> devuelve un arrray sin los primeros 4 de My_array
p my_array.prepend(10, 11) # --> agrega 10 y 11 al comienzo del array
p my_array.append(20, 21) # --> agrega 20 y 21 al final del array
p my_array.map { |e| e * 3 } # --> devuelve un array [27, 15, 3, 6, 9, 12, 0, -3]
p my_array.map{ |e| e * 3 }.reduce { |sum, e| sum + e }  # --> 135, la suma de todos los elementos del array anterior