require 'rails_helper'


RSpec.describe IncuTaskLogic do
	describe '#add' do
   it 'returns 0 for an empty string' do
     result = IncuTaskLogic.add("")
     expect(result).to eq(0)
     puts "returns 0 for an empty string"
   end

   it 'returns sum for an string' do
       result = IncuTaskLogic.add("1")
       expect(result).to eq(1)
       puts "returns 1 for an single string"
     end
	end

   it 'returns sum for an double string' do
     result = IncuTaskLogic.add("0,5")
     expect(result).to eq(5)
   end

   it 'returns sum for three string' do
     result = IncuTaskLogic.add("2,1,6")
     expect(result).to eq(9)
   end

   it 'returns sum for an four string' do
     result = IncuTaskLogic.add("1,5,2,5")
     expect(result).to eq(13)
   end

   it 'returns exception for negative numbers' do
      result = IncuTaskLogic.add("1,-2,3,-4,-6")
      expect(result).to eq("negative numbers not allowed -2, -4, -6")
    end

    it 'returns sum for an \n string' do
       result = IncuTaskLogic.add('2\n9,6\n8')
       expect(result).to eq(25)
    end

    it 'returns invalid for an \n string' do
       result = IncuTaskLogic.add('3,\n')
       expect(result).to eq('invalid')
     end

     it 'returns sum of number for string and avoid //' do
       result = IncuTaskLogic.add('//;\n1;2;4')
       expect(result).to eq(7)
     end
end