class AddUserIdToEquipments < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :user_id, :integer
  end
end
