class Palindrome

  def is_string_palindrome? string
    new_string =string.gsub(' ', '')
    new_string == new_string.reverse
   end

end

#monkey patching a string class

# class String
#   def is_palindrome?
#     new_string =self.gsub(' ', '')
#     new_string == new_string.reverse
#   end
# end
#
# "hello".is_palindrome?

