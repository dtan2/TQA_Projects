class Conversion

  attr_reader :roman, :any_num, :single_int,:ten_int,:hundred_int,:thousand_int

  def initialize
  @roman = {1=> 'i',2 =>'ii',3=> 'iii',4 =>'iv', 5=> 'v',6 =>'vi',7 =>'vii',8 =>'viii',9=>'ix',10=>'x'}

  @any_num ={1 =>'I',4 => 'IV', 5=> 'V', 9 =>'IX', 10 => 'X', 40 => 'XL', 50=> 'L',90=>'XC',100=>'C', 400=>'CD', 500 =>'D',900=>'CM', 1000=>'M'}

  @single_int =[1,4,5,9,]
  @ten_int =[10,40,50,90]
  @hundred_int = [100,400,500,900]
  @thousand_int = [1000]

  end

  def convert_less_than_10 num
    remainder = num % 5

    case remainder
    when 0
      return 'v'
    when 1
      return 'vi'
    when 2
     return 'vii'
    when 3
     return 'viii'
    when 4
     return 'ix'
    end

  end

  def number_to_use num

    case num

      when 1..9
      self.single_int.reverse.each do |x|
      if num >=x
      return x
      break
     end
    end

      when 10..99
        self.ten_int.reverse.each do |x|
          if num >= x
          return x
        break
       end
     end
      when 100 ..999
       self.hundred_int.reverse.each do |x|
        if num >= x
         return x
       break
       end
      end
       when 1000..4999
       self.thousand_int.reverse.each do |x|
         if num >= x
         return x
       break
         end
       end
    end
  end

   def number_to_use_2 numeric
     any_num.each do |num,romman|
       if numeric <= num
         return num
         break
       end
    end
  end

  def convert numeric
   num_use = self.number_to_use numeric
    result =[]

    until numeric == 0
      numeric = numeric - num_use
      result << self.any_num[num_use]
      num_use = self.number_to_use numeric
    end

   return result.join
   end

end