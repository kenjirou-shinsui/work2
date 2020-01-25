Rails.application.routes.draw do
  devise_for :users
  resources :users,only: [:show,:index,:edit,:update,:delete]
  resources :books
  root 'home#top'
  get 'home/about'
  delete 'books' => "books#delete"
end
