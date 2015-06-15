require 'spec_helper'

describe FizzBuzz, 'Output' do

	let(:game) { FizzBuzz.new }

	[1,2,4,7,8].each do |test_case|
		it "Should Return #{test_case} when given #{test_case}" do 
			expect(game.output(test_case)).to eq(test_case)
		end
	end

	[3,6,9,13,23].each do |test_case|
		it "Should Return Fizz when given #{test_case}" do
			expect(game.output(test_case)).to be(:fizz)
		end
	end

	[5,10,52,59].each do |test_case|
		it "Should Return Buzz when given #{test_case}" do
			expect(game.output(test_case)).to be(:buzz)
		end
	end

	[15,30,51,53,54,57].each do |test_case|
		it "Should Return FizzBuzz when given #{test_case}" do
			expect(game.output(test_case)).to be(:fizzbuzz)
		end		
	end

end

