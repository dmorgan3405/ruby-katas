class FizzBuzz
	def self.output(input)
		return 'Fizz' if divisible_by_three? input
		return 'Buzz' if input == 5
		input
	end

	def self.divisible_by_three?(input)
		input % 3 == 0
	end
end