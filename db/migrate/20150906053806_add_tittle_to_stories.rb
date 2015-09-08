class AddTittleToStories < ActiveRecord::Migration
  def change
    add_column :stories, :tittle, :string
  end
end
