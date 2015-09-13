class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.belongs_to :user, :place, index:true
      #t.belongs_to :place, index:true
      t.timestamps null: false
    end
  end
end
