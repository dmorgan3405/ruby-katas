class FizzBuzz

	def output(input)
		return :fizzbuzz if is_fizz_buzz?(input)
		return :fizz if is_fizz?(input)
		return :buzz if is_buzz?(input)
		input
	end	

	private

	def is_fizz_buzz?(input)
		is_fizz?(input) and is_buzz?(input)
	end

	def is_fizz?(input)
		input.divisible_by?(3) or input.contains?(3)
	end

	def is_buzz?(input)
		input.divisible_by?(5) or input.contains?(5)
	end

end

class Fixnum
	def divisible_by?(divisor)
		self % divisor == 0
	end

	def contains?(input)
		self.to_s.include?(input.to_s)
	end
end
