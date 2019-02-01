describe 'The ElementCounter' do
  before(:all) do
    @compound = 'LiFeCO4COCH3'
    @count_elements = ElementCounter.new
  end

  context 'can calculate the weight of a compound' do
    it 'first step, split on every character' do
      expected = ['L', 'i', 'F', 'e', 'C', 'O', '4', 'C', 'O', 'C', 'H', '3']
      result = @count_elements.split_on_every_character(@compound)

      expect(result).to eq(expected)
    end
    it 'second step, convert integer-strings into integers' do
      actual = ['L', 'i', 'F', 'e', 'C', 'O', '4', 'C', 'O', 'C', 'H', '3']
      expected = ['L', 'i', 'F', 'e', 'C', 'O', 4, 'C', 'O', 'C', 'H', 3]

      result = @count_elements.convert_integer_strings_to_integers(actual)

      expect(result).to eq(expected)
    end
    it 'will group create the two letter compounds' do
      actual = ['L', 'i', 'F', 'e', 'C', 'O', 4, 'C', 'O', 'C', 'H', 3]
      expected = ['Li', 'Fe', 'C', 'O', 4, 'C', 'O', 'C', 'H', 3]

      result = @count_elements.group_two_letter_elements(actual)

      expect(result).to eq(expected)
    end
    it 'will place a 1 after all elements without an integer after them' do
      actual = ['Li', 'Fe', 'C', 'O', 4, 'C', 'O', 'C', 'H', 3]
      expected = ['Li', 1, 'Fe', 1, 'C', 1, 'O', 4, 'C', 1, 'O', 1, 'C', 1, 'H', 3]

      result = @count_elements.place_one_after_all_elements_without_an_integer_after_them(actual)

      expect(result).to eq(expected)

      # Expect compounds that don't end with number to start with one

      actual = ['H', 2, 'O']
      expected = [1, 'H', 2, 'O']

      result = @count_elements.place_one_after_all_elements_without_an_integer_after_them(actual)

      expect(result).to eq(expected)
    end
    it 'will check for compounds with a 1 at the beginning and rotate if so' do
      actual = [1, 'H', 2, 'O']
      expected = ['H', 2, 'O', 1]

      result = @count_elements.rotate_if_beginning_with_one(actual)

      expect(result).to eq(expected)
    end
    it 'compiles above helper methods into one element_counter method' do
      actual = @count_elements.element_counter(@compound)
      expected = ['Li', 1, 'Fe', 1, 'C', 1, 'O', 4, 'C', 1, 'O', 1, 'C', 1, 'H', 3]

      expect(actual).to eq(expected)
    end
  end
end
