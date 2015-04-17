require 'rspec'
require_relative '../lib/sorting_project'

describe 'desire sorting order' do

 it 'detect single single elment in the ray' do
  sorting = Sorting_project.new
  input_array =['Active']
  result = sorting.is_desire_sequence input_array
  expect(result).to eq true
 end


 it 'detect an array with  repeat correct sequence ' do
   sorting = Sorting_project.new
   input_array =['Inactive','Inactive','Inactive']
   result = sorting.is_desire_sequence input_array
   expect(result).to eq true
 end

  it 'detect first two out of sequence' do
    sorting = Sorting_project.new
    input_array =['Restricted','Active','Restricted']
    result = sorting.is_desire_sequence input_array
    expect(result).to eq false
  end


 it 'detect first two out of sequence' do
   sorting = Sorting_project.new
   input_array =['Inactive','Active', 'Active']
   result = sorting.is_desire_sequence input_array
   expect(result).to eq false
 end

 it 'detect first two out of sequence' do
   sorting = Sorting_project.new
   input_array =['Inactive','Restricted','Restricted']
   result = sorting.is_desire_sequence input_array
   expect(result).to eq false
 end

  it 'detect sequence start other than Active' do
    sorting = Sorting_project.new
    input_array =['Restricted','Restricted','Inactive']
    result = sorting.is_desire_sequence input_array
    expect(result).to eq true
    end

 it 'detect blank array' do
    sorting = Sorting_project.new
    input_array = []
    result = sorting.is_desire_sequence input_array
    expect(result).to eq false
  end




end