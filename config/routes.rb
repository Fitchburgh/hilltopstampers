Rails.application.routes.draw do
  get 'parties/index'

  post 'parties/new' => 'parties/index'

  patch 'parties/edit'

  delete 'parties/delete'

  get 'customers/index'

  post 'customers/new'

  patch 'customers/edit'

  delete 'customers/delete'

  get 'orders/index'

  post 'orders/new'

  patch 'orders/edit'

  delete 'orders/delete'

  get 'promos/index'

  post 'promos/new'

  patch 'promos/edit'

  delete 'promos/delete'

  get 'home/index'

  get 'home/new'

  get 'home/edit'

  get 'home/delete'

  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
