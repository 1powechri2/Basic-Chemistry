class MoleCalculator
  def molar_mass_deci_places(molar_mass)
    determine_decimal_places(molar_mass)
  end

  def gram_weight_deci_places(gram_weight)
    determine_decimal_places(gram_weight)
  end

  def determine_decimal_places(decimal_number)
    count = 0
    while(decimal_number != decimal_number.to_i)
      count += 1
      decimal_number *= 10
    end
    count
  end

  def determine_sig_figs(molar_mass, gram_weight)
    if molar_mass_deci_places(molar_mass) < gram_weight_deci_places(gram_weight)
      return  molar_mass_deci_places(molar_mass)
    else
      return  gram_weight_deci_places(gram_weight)
    end
  end
end
