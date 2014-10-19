a = [621, 445, 147, 159, 430, 222, 482, 44, 194, 522, 652, 494, 14, 126, 532, 387, 441, 471, 337, 446, 18, 36, 202, 574, 556, 458, 16, 139, 222, 220, 107, 82, 264, 366, 501, 319, 314, 430, 55, 336]

=begin
узнать количество элементов в массиве
=end 
puts a.length

=begin
перевернуть массив
=end 
puts a.reverse

=begin
найти наибольшее число
=end 
puts a.max

=begin
найти наименьшее число
=end 
puts a.min

=begin
отсортировать от меньшего к большему
=end 
puts a.sort {|min,max| min <=> max}

=begin
отсортировать от большего к меньшему
=end 
puts (a.sort {|min,max| min <=> max}).reverse

=begin
удалить все нечетные числа
=end 
puts a.reject{ |item| item%2 != 0 }

=begin
оставить только те числа, которые без остатка делятся на 3
=end 
puts a.reject{ |item| item%3 != 0 }

=begin
удалить из массива числа, которые повторяются (то есть, нужно вывести массив, в котором нет повторов)
=end 
a.uniq

=begin
разделить каждый элемент на 10, в результате элементы не должны быть округлены до целого
=end 
a.each do |num| 
	puts (num.to_f)/10
end

=begin
получить новый массив, который бы содержал в себе те буквы английского алфавита, порядковый номер которых есть в нашем массиве
=end 
alpha = ('a'..'z').to_a
lettersArray = []
(0..a.size-1).each do |x|
if alpha.size >= a[x]
lettersArray << alpha[a[x] - 1]
end
end
puts lettersArray

=begin
поменять местами минимальный и максимальный элементы массива
=end 
maximal = a.index(a.max)
minimal = a.index(a.min)
a[maximal], a[minimal] = a[minimal],a[maximal]
puts a

=begin
найти элементы, которые находятся перед минимальным числом в массиве
=end 
minimal = a.min
puts a[0..minimal]

=begin
необходимо найти три наименьших элемента
=end 
puts a.sort[0..2]



