class DownvotesController < ApplicationController
    def new
        course = Course.find_by_id(params[:id])
        
        course.downvote << Downvote.create(user_id: current_user.id, course_id: course.id)
      flash_success("Yea boi")
    end
end
