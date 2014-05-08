class DropSongsUsersTable < ActiveRecord::Migration
  def change
  	drop_table :songs_users
  	remove_column :comments, :song_id
  end
end
