class Api::V1::MolecularMassController < ApplicationController
  def show
    count = ElementCounter.new(params[:molecule]).element_counter
    calculator = MolecularMassCalculator.new
    seperated = calculator.seperate_elements_from_count(count)
    render json: {molecule: params[:molecule],
                  molecular_mass: calculator.calculate_molecular_mass(seperated)}
  end
end
