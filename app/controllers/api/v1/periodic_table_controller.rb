class Api::V1::PeriodicTableController < ApplicationController
  def index
    render json: Element.all
  end
end
