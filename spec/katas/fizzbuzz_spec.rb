require 'spec_helper'

describe FizzBuzz, 'Output' do

	it 'Should Return One When Given One' do 
		actual = FizzBuzz.output 1
		expect(actual).to eq 1
	end

	it 'Should Return Two Given Two' do
		actual = FizzBuzz.output 2
		expect(actual).to eq 2
	end

	it 'Should Return Fizz Given Three' do
		actual = FizzBuzz.output 3
		expect(actual).to eq 'Fizz'
	end

	it 'Should Return Four Given Four' do
		actual = FizzBuzz.output 4
		expect(actual).to eq 4
	end

	it 'Should Return Buzz Given Five' do
		actual = FizzBuzz.output 5
		expect(actual).to eq 'Buzz'
	end

	it 'Should Return Fizz Given Six' do
		actual = FizzBuzz.output 6
		expect(actual).to eq 'Fizz'
	end

	it 'Should Return Buzz Given Ten' do
		actual = FizzBuzz.output 10
		expect(actual).to eq 'Buzz'
	end
end

