class Api::RentalSpacesController < ApplicationController
  def index
    @rental_spaces = RentalSpace.all
  end
end
