class Lesson < ActiveRecord::Base
  belongs_to :section
  mount_uploader :video, VideoUploader

  # from "ranked model" gem
  include RankedModel 
  ranks :row_order, :with_same => :section_id 	

end
