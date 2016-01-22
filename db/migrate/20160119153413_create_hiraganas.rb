class CreateHiraganas < ActiveRecord::Migration
  def change
    create_table :hiraganas do |t|
      t.string :ideoone
      t.string :ideotwo
      t.string :upletter
      t.string :transcription
      t.string :audioclick

      t.timestamps null: false
    end
  end
end
