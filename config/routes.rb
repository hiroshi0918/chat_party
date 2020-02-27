Rails.application.routes.draw do
  devise_for :users, :controllers => {
    :registrations => 'users/registrations'
   }
  root "top#index"
  resources :chats, only: :index
  resources :users, only:[:show] do
    resources :messages, only: :create
  end
end
