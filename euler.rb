#find sum of all multiples of 3 and 5, while under `1000
#later we should generalize


puts "Please enter two numbers that you would like to find 
	  all the multiples of, give us an upper limit, and we will
	  give you the sum of all the multiples"

puts "What is the first number?"
a = gets.chomp.to_i

puts "What is the second number?"
c = gets.chomp.to_i

puts "And finally, what is the upper limit?"
upper_limit = gets.chomp.to_i

multiplier = 1
ans = a
three_count = []

while ans < upper_limit
	ans = a * multiplier
	multiplier += 1
	if ans >= upper_limit
		break
	end
	three_count << ans
end

puts ' '
puts ' '


second_multiplier = 1
answer = c
five_count = []

while answer < upper_limit
	answer = c * second_multiplier
	second_multiplier += 1
	if answer >= upper_limit
		break 
	end
	five_count << answer
end

puts ' '
puts ' '

five_count.each do |number|
	if three_count.include? number
		#five_count.delete number
		number
	else 
		three_count << number
	end
end




full_count = three_count

sum = 0
full_count.each  do |number|
	sum += number
end

puts "The full list of multiples is #{full_count}"
puts "The sum of all multiples of #{a} and #{c} is #{sum}"







