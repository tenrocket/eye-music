class AddSongIdAndPhotoIdToComments < ActiveRecord::Migration
  def change
  	add_column :comments, :photo_id, :integer
  	add_column :comments, :song_id, :integer
  end
end
