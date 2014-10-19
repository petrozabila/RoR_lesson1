number = gets.chomp

summery = number.each_char.to_a

fun = summery.collect{|i| i.to_i}

summ = 0

fun.each do |a| 
	summ += a
end
	puts summ

