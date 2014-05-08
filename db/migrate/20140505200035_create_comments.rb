class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :comment_type
      t.string :content
      t.string :comment_id
    end
  end
end
