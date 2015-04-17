require 'rspec'
# require 'fibonacci_num'

require_relative '../lib/fibonacci_num'

describe 'Fibonacci Number' do

  it 'is 1 in the Fibonacci sequence' do
    sequence = FibonacciNum.new
    number=1
    expect(sequence.is_numeric_a_fibonacci_number number).to eq true
  end

  it 'is 4 is not in the Fibonacci sequence' do
    sequence = FibonacciNum.new
    number=4
    expect(sequence.is_numeric_a_fibonacci_number number).to eq false
  end

  it '5 in the Fibonacci sequence' do
   sequence = FibonacciNum.new
   number = 5
   expect(sequence.is_numeric_a_fibonacci_number number).to eq true
  end

  it '25 not in the Fibonacci sequence' do
    sequence = FibonacciNum.new
    number = 25
    expect(sequence.is_numeric_a_fibonacci_number number).to eq false
  end

  it 'Fibonacci number greater than zero' do
    sequence = FibonacciNum.new
    number = -1
    expect(sequence.is_numeric_a_fibonacci_number number).to eq
  end


  it '12th in the Fibonacci sequence is 144' do
    sequence = FibonacciNum.new
    expect(sequence.fibonacci_number_generator 12).to eq 144
  end

 it '100th in the Fibonacci sequence is 354224848179261915075' do
   sequence = FibonacciNum.new
   expect(sequence.fibonacci_number_generator 100).to eq 354224848179261915075
  end





end