class Sorting_project

  def is_desire_sequence input_array
    count = input_array.count
    case count
      when 1
        result = true
      else
        result = false
        input_array.each_cons(2) do |element, next_element|

          if (element == 'Restricted' && next_element == 'Active')||
              (element == 'Inactive' && next_element == 'Active')||(element == 'Inactive' && next_element == 'Restricted')
           break
          else
            result = true
          end
        end
      end

    return result
  end

  def is_desire_sequence_2 input_array
    count = input_array.count
    if count == 1||0
      result = true
      else
      input_array.each_cons(2) do |element, next_element|

        if (element == 'Restricted' && next_element == 'Active')||
            (element == 'Inactive' && next_element == 'Active')||(element == 'Inactive' && next_element == 'Restricted')
          break
        else
          result = false
        end
      end
    end
  return result
end


end
