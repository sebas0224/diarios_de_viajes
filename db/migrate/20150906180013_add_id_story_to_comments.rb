class AddIdStoryToComments < ActiveRecord::Migration
  def change
    add_column :comments, :id_story, :integer
  end
end
