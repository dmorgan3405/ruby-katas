require 'spec_helper'

describe 'Arabic Numerals to Roman Numerals' do 

	before(:each) do 
		@converter = ArabicNumeralConverter.new
	end

	context 'Romans did not have a zero' do 
		it 'Converts 0 to a blank string' do
			expect(@converter.to_roman(0)).to eq ""
		end
	end

	{ 1 => "I",
		2 => "II",
		3 => "III",
		4 => "IV",
		5 => "V",
		6 => "VI",
		9 => "IX",
		10 => "X",
		40 => "XL",
		50 => "L",
		87 => "LXXXVII",
		90 => "XC",
		100 => "C",
		400 => "CD",
		500 => "D",
		900 => "CM",
		1000 => "M",
		2789 => "MMDCCLXXXIX"
	}.each do |arabic, roman|
		it "should convert #{arabic} to #{roman}" do
			expect(@converter.to_roman(arabic)).to  eq roman
		end
	end

end