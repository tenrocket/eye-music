class CreateSongsAndUsers < ActiveRecord::Migration
  def change
  	create_table :songs do |t|
  		t.string :name
  		t.string :song_file
  	end

  	create_table :users do |t|
  		t.string :name
  		t.string :user_photo
  	end

    create_table :songs_and_users do |t|
    	t.integer :song_id
    	t.integer :user_id
    end
  end
end
