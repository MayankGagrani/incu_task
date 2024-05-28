class IncuTaskLogic
	def self.add(numbers_string)
		return 0 if numbers_string.empty?
		num = numbers_string.split(',').map(&:to_i) # sum of number in string
		num.delete_if {|x| x >= 1000 }

		 #for checking negative numbers
    if numbers_string.include?("-")
      num = numbers_string.split(',').map(&:to_i).select { |num| num < 0 }.join(", ")
      return "negative numbers not allowed #{num}"
    end

    num = numbers_string.gsub('\n', ",").split(',').map(&:to_i) if numbers_string.include?('\n') #sum of number when \n also present

		num = numbers_string.split("\;").map {|x| x[/\d+/]}.map(&:to_i) if numbers_string.start_with?("//") # code for delimeter

		num = numbers_string.split("*").map {|x| x[/\d+/]}.map(&:to_i) if numbers_string.include?('*')

		return "invalid" if numbers_string.split(',').include?('\n') #for invalid string

		num.sum
	end
end