class CreateTag < ActiveRecord::Migration
  def change
    create_table :tags do |t|
      t.string :tag_text
    end
  end
end
