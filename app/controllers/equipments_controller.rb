class EquipmentsController < ApplicationController
	def index
		if user_signed_in?
			@equipments = Equipment.where(:user_id => current_user.id)
		end
		if user_signed_in? && current_user.admin?
			@equipments = Equipment.all
		end
	end

	def new
		@equipment = current_user.Equipment.build

	end

	def create
		equipment = current_user.Equipment.build(equipment_params)
		if equipment.save
			redirect_to "/equipments"
		else
			flash[:errors]=equipment.errors.full_messages
			redirect_to "/equipments/new"
		end
	end

	def show
		@equipment = Equipment.find(params[:id])
	end

	def edit
		@equipment = Equipment.find(params[:id])
	end

	def update
		equipment = Equipment.find(params[:id])
		if current_user.admin?
			if equipment.approved == false
			    equipment.update_attribute(:approved, 'True')
				redirect_to "/equipments"
			else
				equipment.update_attribute(:approved, 'false')
				redirect_to "/equipments"
			end
		else
		if equipment.update(equipment_params)
			redirect_to "/equipments"
		else
			flash[:errors]=equipment.errors.full_messages
			redirect_to "/equipments/<%= @equipment.id %>/edit"
		end
		end
	end


	def destroy
		equipment = Equipment.find(params[:id])
		equipment.destroy
		redirect_to "/equipments"
	end

	
		
	


private
	def equipment_params
		params.require(:equipment).permit(:name,:e_number,:m_number,:make,:lab_location,:date_of_installation,:current_status)
	end
end
