Rails.application.routes.draw do
  devise_for :users, path: '', path_names: { sign_in: 'login', sign_out: 'logout', sign_up: 'register' }

  get 'about',    to: 'pages#about'
  get 'contact',  to: 'pages#contact'
  root 'pages#home'
  resources :portfolios, except: [:show]
  get 'portfolio/:id', to: 'portfolios#show', as: 'portfolio_show'
  resources :blogs do
    member do 
      get :toggle_status
    end
  end
end