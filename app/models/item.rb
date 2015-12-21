class Item < ActiveRecord::Base
  actable

  belongs_to :chapter

  acts_as_list scope: :chapter

  validates_presence_of :name

  def position_and_name
    "#{position} #{name}"
  end

end
