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
end