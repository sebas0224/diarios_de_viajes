class AddTypeToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :tipo, :string
  end
end
