Rails.application.routes.draw do
  root to: "purchasables#index"
  resources :purchasables, only: [:index, :show] , constraints: { format: :json }

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
