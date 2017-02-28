Rails.application.routes.draw do
  get 'home/index'

  get 'home/new'

  get 'home/edit'

  get 'home/delete'

  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
