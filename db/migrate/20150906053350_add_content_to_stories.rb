class AddContentToStories < ActiveRecord::Migration
  def change
    add_column :stories, :content, :string
  end
end
