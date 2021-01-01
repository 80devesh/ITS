class AddApprovedToEquipment < ActiveRecord::Migration[6.0]
  def change
    add_column :equipment, :approved, :boolean, default: false
  end
end
