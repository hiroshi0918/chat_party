Rails.application.routes.draw do
  root "chats#index"
  resources :chats, only:[:new,:show] do
  end
end
