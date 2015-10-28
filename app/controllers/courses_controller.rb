class CoursesController < ApplicationController
  
  # cources controller FOR STUDENTS !!!
  
  def index
    @courses = Course.all
  end

end
