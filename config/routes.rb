Rails.application.routes.draw do
  resources :mechanical_properties
  resources :genes
  resources :specimen_samples
  resources :silk_samples
  resources :indivisuals
  resources :organisms
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "organisms#index"
end
