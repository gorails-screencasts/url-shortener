class AddUserIdToLinks < ActiveRecord::Migration[7.0]
  def change
    add_column :links, :user_id, :integer
  end
end
