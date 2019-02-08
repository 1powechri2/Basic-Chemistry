class Api::V1::MolecularMassController < ApplicationController
  def show
    counter = ElementCounter.new
    calculator = MolecularMassCalculator.new
    count = counter.element_counter(params[:molecule])
    seperated = calculator.seperate_elements_from_count(count)
    binding.pry
    render json: {molecule: params[:molecule],
                  molecular_mass: calculator.calculate_molecular_mass(seperated)}
  end
end
