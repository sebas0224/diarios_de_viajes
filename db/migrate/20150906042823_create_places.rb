class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.string :name	
      t.belongs_to :citytown, index:true
      t.timestamps null: false
    end
  end
end
