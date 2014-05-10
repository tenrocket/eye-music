class AddPhotographictoPhoto < ActiveRecord::Migration
  def change
  	add_column :photos, :photographic_id, :string
  	add_column :photos, :photographic_type, :string
  end
end
