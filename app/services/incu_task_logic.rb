class IncuTaskLogic
	def self.add(numbers_string)
		return 0 if numbers_string.empty?
		num = numbers_string.split(',').map(&:to_i) # sum of number in string
		num.sum
	end
end