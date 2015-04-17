require 'rspec'
# require 'Palindrome'
require_relative '../lib/palindrome'

describe 'palindrome string' do

  it 'able to detect palindrome string' do
    palindrome = Palindrome.new
    string = 'abccba'
    result = palindrome.is_string_palindrome? string
    expect(result).to eq true
  end

  it 'able to detect none palindrome' do
  palindrome = Palindrome.new
  string = 'abcca'
  result = palindrome.is_string_palindrome? string
  expect(result).to eq false
  end

  it 'ignore space in the string' do
    palindrome = Palindrome.new
    string = 'ab                        ccba'
    result = palindrome.is_string_palindrome? string
    expect(result).to eq true

   it


  end



end




