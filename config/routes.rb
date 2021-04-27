Rails.application.routes.draw do
  namespace :api do
    resources :folders
    resources :archives
  end
end
