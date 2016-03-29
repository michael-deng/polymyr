Rails.application.routes.draw do
  devise_for :users, :controllers => { registrations: 'users/registrations' }
  devise_for :makers, :controllers => { registrations: 'makers/registrations' }

  root 'welcome#home'
  resources :users
  resources :makers
  resources :products
end