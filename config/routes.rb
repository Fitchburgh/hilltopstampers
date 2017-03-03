Rails.application.routes.draw do
  get 'parties/index'

  get 'parties/new'

  get 'parties/edit'

  get 'parties/delete'

  get 'customers/index'

  get 'customers/new'

  get 'customers/edit'

  get 'customers/delete'

  get 'orders/index'

  get 'orders/new'

  get 'orders/edit'

  get 'orders/delete'

  get 'promos/index'

  get 'promos/new'

  get 'promos/edit'

  get 'promos/delete'

  get 'party/index'

  get 'party/new'

  get 'party/edit'

  get 'party/delete'

  get 'customer/index'

  get 'customer/new'

  get 'customer/edit'

  get 'customer/delete'

  get 'home/index'

  get 'home/new'

  get 'home/edit'

  get 'home/delete'

  devise_for :users
  root to: "home#index"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
