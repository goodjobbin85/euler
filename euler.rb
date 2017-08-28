#find sum of all multiples of 3 and 5, while under `1000
#later we should generalize

a = 3
multiplier = 1
ans = a
three_count = []

while ans < 1000
	ans = a * multiplier
	multiplier += 1
	if ans >= 1000
		break
	end
	three_count << ans
end

print three_count

puts ' '
puts ' '

c = 5
second_multiplier = 1
answer = c
five_count = []

while answer < 1000
	answer = c * second_multiplier
	second_multiplier += 1
	if answer >= 1000
		break 
	end
	five_count << answer
end

print five_count

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


puts three_count

full_count = three_count

sum = 0
full_count.each  do |number|
	sum += number
end

puts "The sum is #{sum}"







