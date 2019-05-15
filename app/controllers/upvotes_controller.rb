class UpvotesController < ApplicationController
    def new
        course = Course.find_by_id(params[:id])
        
        course.upvotes << Upvotevote.create(user_id: current_user.id, course_id: course.id)
      flash_success("Yea boi")
    end
end
