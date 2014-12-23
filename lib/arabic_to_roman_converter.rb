class ArabicNumeralConverter
	MAPPINGS = {
							1000 => "M",
							900 => "CM",
							500 => "D",
							400 => "CD",
							100 => "C",
							90 => "XC",
							50 => "L",
							40 => "XL",
							10 => "X",
							9 => "IX" ,
							5 => "V", 
							4 => "IV", 
							1 => "I"
						}

	def to_roman(number_to_convert)
		return "" if number_to_convert == 0

		arabic, roman = nearest_mapping_for(number_to_convert)

		roman + to_roman(number_to_convert - arabic)
	end

	
	private 

	def nearest_mapping_for(number_to_convert)
		MAPPINGS.find{|arabic, _| arabic <= number_to_convert}
	end
end