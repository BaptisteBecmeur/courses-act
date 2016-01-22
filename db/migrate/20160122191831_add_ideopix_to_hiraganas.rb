class AddIdeopixToHiraganas < ActiveRecord::Migration
  def change
    add_column :hiraganas, :ideopix, :string
  end
end
