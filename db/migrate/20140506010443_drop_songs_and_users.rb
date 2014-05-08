class DropSongsAndUsers < ActiveRecord::Migration
  def change
  	drop_table :songs_and_users
  end
end
