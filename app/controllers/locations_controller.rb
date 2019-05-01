class LocationsController < ApplicationController
  def new
        @location = Location.new()
  end

  def index
  end

  def edit
  end
  
  def create
    @location = Location.new(new_location)
  end
end
