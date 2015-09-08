class AddIdCountryToCitytowns < ActiveRecord::Migration
  def change
    add_column :citytowns, :id_country, :integer
  end
end
