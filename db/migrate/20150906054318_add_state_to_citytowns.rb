class AddStateToCitytowns < ActiveRecord::Migration
  def change
    add_column :citytowns, :state, :string
  end
end
