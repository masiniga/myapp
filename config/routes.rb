Rails.application.routes.draw do
  root to: 'pages#home'
  get 'pages/home', to: 'pages#home', as: 'home'
  get 'pages/fr', to: 'pages#fr', as: 'fr'
  get 'pages/rus', to: 'pages#rus', as: 'rus'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
