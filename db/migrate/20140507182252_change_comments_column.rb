class ChangeCommentsColumn < ActiveRecord::Migration
  def change
  	rename_column :comments, :comment_type, :commentable_type
  	rename_column :comments, :comment_id, :commentable_id
  	remove_column :comments, :photo_id
  end
end
