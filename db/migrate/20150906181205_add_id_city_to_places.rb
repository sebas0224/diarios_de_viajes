class AddIdCityToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :id_city, :integer
  end
end
