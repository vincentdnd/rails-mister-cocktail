Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # get 'cocktails', to: 'cocktails#index'
  resources :cocktails, only: [ :index, :show, :new, :create] do
    resources :doses, only: [:new, :create]
  end
  delete 'doses/:id', to: 'doses#destroy', as: 'delete_doses'
end
