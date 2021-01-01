class Equipment < ApplicationRecord
	belongs_to :user
	validates :name, :e_number, :m_number, :make, :lab_location, :date_of_installation, :current_status,
		presence: true
end
