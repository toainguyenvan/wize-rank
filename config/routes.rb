Rails.application.routes.draw do
  resources :challenges
  devise_for :users, controllers: { sessions: 'users/sessions' }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "home#index"

  post '/home/:run', to: 'home#run'
  get '/home/:switch_lang/:id', to: 'home#switch_lang'
end
