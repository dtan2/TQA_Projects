class Palindrome

  def is_string_palindrome? string
    new_string =string.gsub(' ', '')
    new_string == new_string.reverse
   end

end


