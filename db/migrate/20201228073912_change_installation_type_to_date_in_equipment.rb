class ChangeInstallationTypeToDateInEquipment < ActiveRecord::Migration[6.0]
  def change
  	change_column :equipment, :date_of_installation, :date 
  end
end
