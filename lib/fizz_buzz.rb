class FizzBuzz
	def self.output(input)
		return 'Fizz' if divisible_by_three? input
		return 'Buzz' if divisible_by_five? input
		input
	end

	def self.divisible_by_three?(input)
		input % 3 == 0
	end

	def self.divisible_by_five?(input)
		input % 5 == 0
	end
end