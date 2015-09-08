class AddIdUserToStories < ActiveRecord::Migration
  def change
    add_column :stories, :id_user, :integer
  end
end
