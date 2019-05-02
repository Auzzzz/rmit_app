class LocationsController < ApplicationController
  def new
        @location = Location.new()
  end

  def index
    @location = Location.all()
  end


  def edit
  end
  
  def show
    
  end
  
  def create
    new_location = params.require(:location).permit(:name)
    @location = Location.new(new_location)
    
    
  if @location.save
      
      flash[:success] = "Loaction Made Successfully - #{@location.name}"
    else
      render 'new'
  end
  end
  
end