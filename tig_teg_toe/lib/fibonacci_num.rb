class FibonacciNum

  attr_reader :fibonacci_sequence

  def initialize
    @fibonacci_sequence = {1 => 1, 2 => 1, 3 => 2, 4 => 3, 5 => 5, 6=>8, 7 => 13, 8 => 21, 9 => 34, 10 => 55, 11 => 89, 12 => 144}
  end

  def is_number_in_fibonacci_sequence number

    self.fibonacci_sequence.each do |n, fibonacci_num|

      if fibonacci_num == number
        return true
        break
      end
    end
  end

  def fibonacci_number_generator nth

    fibonacci_series ={1 => 1, 2 => 1}
    #n is greater than 2
    fail 'the genrator only works with number greater than 2' unless nth >=3

    for n in 3..nth
      new_fibonacci_num = fibonacci_series[n-1] + fibonacci_series[n-2]
      fibonacci_series[n] = new_fibonacci_num
    end
    puts fibonacci_series
    return fibonacci_series[nth]
  end

    def fibonacci_golden_number_generator nth

      golden_ratio = 1.61803398874989484820

      fibonacci_num = (((golden_ratio)**nth -(1-golden_ratio)**nth)/Math.sqrt(5)).to_int

      return fibonacci_num
    end

   def is_perfect_sqrt number
     num_sqrt_root = Math.sqrt(number)
     return (num_sqrt_root.to_int**2 == number )

   end


  def is_numeric_a_fibonacci_number number
  # If either test is true then the number is in Fibonacci sequence
  (is_perfect_sqrt ((5*number*number) + 4)) || (is_perfect_sqrt ((5*number*number) - 4))

  end


end