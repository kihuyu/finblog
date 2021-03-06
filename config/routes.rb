Rails.application.routes.draw do
  get 'signup', to: 'users#new', as: 'signup'
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'

  resources :users
  resources :sessions

  get 'welcome/index'

  resources :articles

  root 'welcome#index'

  mount Nestedcomments::Engine, at: "/articles/:id/"
 #mount Articlecomments::Engine, at: "/articles/:id/"
end
