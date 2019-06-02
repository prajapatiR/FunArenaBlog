Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  root 'home#index'
  get 'home/post', to: 'home#show', as: 'show_post'
  get 'home/users', to: 'users#index', as: 'list_users'
  get 'home/user', to: 'users#show', as: 'show_user'
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registrations' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
