require 'rspec'
require_relative '../lib/sorting_project'

describe 'desire sorting order' do

 it 'single sorted element ' do
  sorting = Sorting_project.new
  input_array =['Active']
  result = sorting.is_desire_sequence_2 input_array
  expect(result).to eq true
 end


 it 'an array with repeat correct sequence ' do
   sorting = Sorting_project.new
   input_array =['Inactive','Inactive','Inactive']
   result = sorting.is_desire_sequence_2 input_array
   expect(result).to eq true
 end

  it 'an array with any two out of sequence' do
    sorting = Sorting_project.new
    input_array =['Restricted','Active','Restricted']
    result = sorting.is_desire_sequence input_array
    expect(result).to eq false
  end

 it 'sorted element with blank result' do
    sorting = Sorting_project.new
    input_array = []
    result = sorting.is_desire_sequence input_array
    expect(result).to eq false
  end

end