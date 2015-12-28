class Course < ActiveRecord::Base
	has_many :chapters, -> { order(position: :asc) }

    validates_presence_of :title

  	extend FriendlyId
   friendly_id :title, use: :slugged
   
   	def position_and_name
    "#{position} #{title}"
   	end
end