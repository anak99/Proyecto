Rails.application.routes.draw do
  resources :boards
  resources :pins do
    resources :comments

   member do
      post '/like' => 'pins#like'
    end
  end

  get '/:username' => 'users#show', as: 'user'

  devise_for :users
  root 'pins#index'
end
