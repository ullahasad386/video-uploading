Rails.application.routes.draw do
  resources :videoos
  root "videoos#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
