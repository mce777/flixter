class CoursesController < ApplicationController
  
  # courses controller !!! FOR STUDENTS !!!
  
  def index
    @courses = Course.all
  end

  def show
  	@course = Course.find(params[:id])
  end

end
