class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  include SessionsHelper
  before_action:populate
  
  
  def populate
    @locations = Location.all.order(:name) #tute help with getting .order
    @courses = Course.all.order(:name) #tute help with getting .order
    @categories = Category.all.order(:name) #tute help with getting .order
    #https://stackoverflow.com/questions/14628692/undefined-method-each-rails-error
  end

end