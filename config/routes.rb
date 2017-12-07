Rails.application.routes.draw do
  get 'faces/register'
  put "faces/update" => "faces#update"

  devise_for :users
  get "chirps/face" => "chirps#face"
  get 'chirps', :to => 'chirps#index', :as => :user_root
  get 'chirps/photo' => 'chirps#photo'
  get 'users/face' => 'users#face'
  

  resources :users
  resources :chirps
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root :to => 'chirps#index'
end
