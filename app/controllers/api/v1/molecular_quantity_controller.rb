class Api::V1::MolecularQuantityController < ApplicationController
  def show
    count = ElementCounter.new.element_counter(params[:molecule])
    molecular_mass = MolecularMassCalculator.new.molecular_mass(count)
    weight = BigDecimal(params[:grams])
    moles = MoleCalculator.new.calculate_moles(molecular_mass, weight)
    render json: {molecule: params[:molecule],
                  molecular_mass: "#{molecular_mass} grams",
                  given_weight: "#{weight} grams",
                  number_of_moles: moles}
  end
end
