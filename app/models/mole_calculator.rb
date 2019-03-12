class MoleCalculator
  def molar_mass_sig_figs(molar_mass)
    determine_sig_figs(molar_mass)
  end

  def gram_weight_sig_figs(gram_weight)
    determine_sig_figs(gram_weight)
  end

  def determine_sig_figs(number)
    number.split[1].length
  end

  def determine_round_to_sig_figs(molar_mass, gram_weight)
    if molar_mass_sig_figs(molar_mass) < gram_weight_sig_figs(gram_weight)
      return  molar_mass_sig_figs(molar_mass)
    else
      return  gram_weight_sig_figs(gram_weight)
    end
  end

  def calculate_moles(molar_mass, gram_weight)
    sig_figs = determine_round_to_sig_figs(molar_mass, gram_weight)
    calc = (gram_weight / molar_mass)
    exp = calc.exponent.abs
    calc.round(sig_figs + exp)
  end
end
