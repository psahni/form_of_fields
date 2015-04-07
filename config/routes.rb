Rails.application.routes.draw do
  root to: 'items#index'
  resource :form_of_fields
  resources :items
end
