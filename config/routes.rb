Rails.application.routes.draw do
  devise_for :users
	resources :equipments
	root 'equipments#index'
	# 'equipments' => 'equipments#index'
	post 'equiments' => 'equiments#create'
	get 'equiments/:id' => 'equiments#show'
	get 'equipments/:id/edit' => 'equipments#edit'
	patch 'equipments/:id' => 'equipments#update'
	delete 'equipments/:id' => 'equipments#destroy'
end
