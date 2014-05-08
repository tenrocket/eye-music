class AddSongPhotoToSong < ActiveRecord::Migration
  def change
  	add_column :songs, :song_photo, :string
  end
end
