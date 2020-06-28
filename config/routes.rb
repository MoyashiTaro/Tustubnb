Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'reservations#new'
  get 'reservations' => 'reservations#new'
  post 'reservations' => 'reservations#create'

end
