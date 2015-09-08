class CreateCitytowns < ActiveRecord::Migration
  def change
    create_table :citytowns do |t|

      t.timestamps null: false
    end
  end
end
