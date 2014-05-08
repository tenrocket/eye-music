class DropPhotosTagsTable < ActiveRecord::Migration
  def change
  	drop_table :photos_tags
  	drop_table :songs
  end
end
