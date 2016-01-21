class AddRandomletterToHiraganas < ActiveRecord::Migration
  def change
    add_column :hiraganas, :randomletter, :string
  end
end
