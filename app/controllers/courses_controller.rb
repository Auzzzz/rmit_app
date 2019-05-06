class CoursesController < ApplicationController
  def new
     @course = Course.new
  end
  
  def index
    @course = Course.all
  end
  
  def show
   @course = Course.find(params[:id])
  end
  
  def create
    new_course = params.require(:course).permit(:name)
    @course = Course.new(new_course)
    
    if @course.save
      flash[:success] = "Category Made Successfully - #{@course.name}"
      redirect_to @course
    else
      render 'new'
    end
  end
end
