class RemoveRandoletterFromHiraganas < ActiveRecord::Migration
  def change
    remove_column :hiraganas, :randomletter, :string
  end
end
