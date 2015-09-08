class AddContinentToCountries < ActiveRecord::Migration
  def change
    add_column :countries, :continent, :string
  end
end
