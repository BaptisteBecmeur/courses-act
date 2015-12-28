class AddSlugToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :slug, :string
    add_index :posts, :slug, unique: true
  end
end
