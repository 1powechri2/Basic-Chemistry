class MolecularMassCalculator
  def seperate_elements_from_count(molecule)
    molecule.partition do |char|
      char.class == String
    end
  end

  def calculate_molecular_mass(seperated)
    counter = BigDecimal('0')
    seperated.first.each_with_index do |char, index|
      counter += (Element.find_by(symbol: char).atomic_weight * seperated[1][index])
    end
    counter
  end

  def molecular_mass(molecule)
    a = seperate_elements_from_count(molecule)
    calculate_molecular_mass(a)
  end
end
