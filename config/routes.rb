Rails.application.routes.draw do
  root to: 'quotes#about'
  get 'qutoes/about', to: 'quotes#about', as: 'about'
  get 'quotes/quote_home', to: 'quotes#quote_home', as: 'quote_home'
  get 'quotes/index', to: 'quotes#index', as: 'index'
  get 'quotes/form', to: 'quotes#form', as: 'form'
  resources :quotes
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
