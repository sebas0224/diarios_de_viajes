class CreateCitytowns < ActiveRecord::Migration
  def change
    create_table :citytowns do |t|
      t.belongs_to :country, index:true
      t.timestamps null: false
    end
  end
end
