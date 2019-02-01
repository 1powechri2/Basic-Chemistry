class ElementCounter
  def split_on_every_character(compound)
    split = compound.split(/([A-Za-z])/)
    split.delete('')
    split
  end

  def convert_integer_strings_to_integers(arr)
    arr.map do |char|
      if (char =~ /[0-9]/) != nil
        char.to_i
      else
        char
      end
    end
  end

  def group_two_letter_elements(arr)
    arr.each_with_index do |char, index|
      if (char.class == String) && (char == char.downcase)
        arr[index] = arr[index - 1] + arr[index]
        arr.delete_at(index - 1)
      end
    end
    arr
  end

  def place_one_after_all_elements_without_an_integer_after_them(arr)
    array = []
    arr.each_with_index do |char, index|
      if (char.class == String) && (arr[index - 1].class == String)
        array.push(1)
        array.push(char)
      else
        array.push(char)
      end
    end
    array
  end

  def rotate_if_beginning_with_one(arr)
    if arr.first == 1
      arr.rotate!
    end
    arr
  end

  def element_counter(compound)
    a = split_on_every_character(compound)
    b = convert_integer_strings_to_integers(a)
    c = group_two_letter_elements(b)
    d = place_one_after_all_elements_without_an_integer_after_them(c)
    e = rotate_if_beginning_with_one(d)
  end
end
