class CoursesController < ApplicationController
  def new
     @course = Course.new
  end
  
  def create
    @course = Courses.new(course_params)
    if @course.save
      log_in @course
      flash[:success] = "CourseMade - Good luck!"
      redirect_to @course
    else
      render 'new'
    end
  end
  
end
