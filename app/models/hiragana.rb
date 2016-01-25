class Hiragana < ActiveRecord::Base


  validates :ideoone, presence: true
  validates :ideotwo, presence: true
  validates :transcription, presence: true
  validates :upletter, presence: true

  mount_uploader :ideopix, ImageUploader
end
