class LessonsController < ApplicationController
	before_action :authenticate_user!
	before_action :require_users_enrolled_current_course, :only => [:show]

	def show
	end

	private

	def require_users_enrolled_current_course
		# gives access to lesson if you are enrolled in course
		check_course = current_lesson.section.course

		# the ! means "not"
		# if !current_lesson.section.course.user.enrolled_in?(check_course)
		# 	redirect_to course_path, :alert => 'You are not enrolled yet :('
		# end

		# the above also works.
		if current_lesson.section.course.user.enrolled_in?(check_course) == false
			redirect_to course_path, :alert => 'You are not enrolled yet :('
		end

	end	

  	helper_method :current_lesson
  	def current_lesson
    	@current_lesson ||= Lesson.find(params[:id])
  	end



end
