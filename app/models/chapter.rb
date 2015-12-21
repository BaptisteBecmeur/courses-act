class Chapter < ActiveRecord::Base
  acts_as_list scope: :course
  belongs_to :course

  validates_presence_of :title

  def position_and_name
    "#{position} #{name}"
  end
end
