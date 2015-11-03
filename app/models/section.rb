class Section < ActiveRecord::Base
	belongs_to :course
	has_many :lessons

  # from "ranked model" gem
  include RankedModel 
  ranks :row_order, :with_same => :course_id 

end
