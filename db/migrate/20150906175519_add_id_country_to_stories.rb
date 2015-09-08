class AddIdCountryToStories < ActiveRecord::Migration
  def change
    add_column :stories, :id_country, :integer
  end
end
