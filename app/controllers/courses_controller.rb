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

    @course = Course.new(course_perms)
    
    if @course.valid?
      @course.save
      flash[:success] = "Category Made Successfully - #{@course.name}"
      redirect_to @course
    else
      render 'new'
    end
  end
  
  def course_perms
    params.require(:course).permit([:name, :desc, :locations => [], :categories => []])
  end
end
