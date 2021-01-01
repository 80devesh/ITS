class CreateEquipment < ActiveRecord::Migration[6.0]
  def change
    create_table :equipment do |t|
      t.string :name
      t.integer :e_number
      t.string :m_number
      t.integer :make
      t.string :lab_location
      t.string :date_of_installation
      t.string :current_status

      t.timestamps
    end
  end
end
