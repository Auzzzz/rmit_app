class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action:populate
  
  
  def populate
    @location = Location.all.order(:name) #tute help with getting .order
  end

end